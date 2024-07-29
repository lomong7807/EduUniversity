package standardhompage.admin.smsMng;

import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.log4j.Log4j2;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import standardhompage.admin.smsMng.service.SmsMngService;
import standardhompage.dto.smsLog.SmsLogReq;
import standardhompage.security.CustomUserDetails;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Map;

@Log4j2
@Aspect
@Component
public class SmsLogAop {

    @Autowired
    private HttpServletRequest request;

    @Autowired
    private SmsMngService smsMngService;

    @Autowired
    ObjectMapper objectMapper;

    @Pointcut("execution(* standardhompage.admin.smsMng.service.SmsMngService.sendSingleSms(..))")
    public void sendSingleSmsMethod() {}

    @Pointcut("execution(* standardhompage.admin.smsMng.service.SmsMngService.sendMultipleSms(..))")
    public void sendMultipleSmsMethod() {}

    @AfterReturning(pointcut = "sendSingleSmsMethod()", returning = "result")
    public void logSingleSms(JoinPoint joinPoint, Object result) {
        try {
            Map<String, Object> requestBody = (Map<String, Object>) joinPoint.getArgs()[0];
            Map<String, Object> resultMap = (Map<String, Object>) result;

            SmsLogReq logReq = createSmsLogReq(requestBody, resultMap, false);
            smsMngService.insertSmsLog(logReq);
        } catch (Exception e) {
            log.error("Error logging single SMS: ", e);
        }
    }

    @AfterReturning(pointcut = "sendMultipleSmsMethod()", returning = "result")
    public void logMultipleSms(JoinPoint joinPoint, Object result) {
        try {
            Map<String, Object> requestBody = (Map<String, Object>) joinPoint.getArgs()[0];
            Map<String, Object> resultMap = (Map<String, Object>) result;

            List<Map<String, String>> receivers = (List<Map<String, String>>) requestBody.get("receivers");
            for (Map<String, String> receiver : receivers) {
                SmsLogReq logReq = createSmsLogReq(requestBody, resultMap, true);
                logReq.setReceive_no(receiver.get("userHp"));
                logReq.setUser_id(receiver.get("userId"));
                smsMngService.insertSmsLog(logReq);
            }
        } catch (Exception e) {
            log.error("Error logging multiple SMS: ", e);
        }
    }

    private SmsLogReq createSmsLogReq(Map<String, Object> requestBody, Map<String, Object> resultMap, boolean isMultiple) {
        SmsLogReq logReq = new SmsLogReq();

        String content = (String) requestBody.get("content");
        logReq.setTitle(content.length() > 20 ? content.substring(0, 20) + "..." : content);
        logReq.setMemo(content);
        logReq.setSend_no((String) requestBody.get("sendNumber"));
        logReq.setSend_type(isMultiple ? "group" : "individual");
        logReq.setWrite_time(LocalDateTime.now());

        String reserveTimeStr = (String) requestBody.get("reserveTime");
        if (reserveTimeStr != null && !reserveTimeStr.isEmpty()) {
            logReq.setReserve_time(LocalDateTime.parse(reserveTimeStr));
        }

        logReq.setResult((Boolean) resultMap.get("isAllSuccess") ? "SUCCESS" : "FAILED");
        if (resultMap.containsKey("error")) {
            logReq.setError_code((String) resultMap.get("errorMessage"));
        }

        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication != null && authentication.getPrincipal() instanceof CustomUserDetails) {
            CustomUserDetails userDetails = (CustomUserDetails) authentication.getPrincipal();
            logReq.setCompany_seq(userDetails.getUser().getCompanySeq());
        }

        // 단일 발송일 경우
        if (!isMultiple) {
            Map<String, String> receiver = (Map<String, String>) requestBody.get("receiver");
            logReq.setReceive_no(receiver.get("userHp"));
            logReq.setUser_id(receiver.get("userId"));
        }

        return logReq;
    }

/*    @After("sendSmsMethod()")
    public void logSmsAfterSending(JoinPoint joinPoint) {
        try {
            MethodSignature signature = (MethodSignature) joinPoint.getSignature();
            Map<String, Object> requestBody = (Map<String, Object>) joinPoint.getArgs()[0];

            String sendNumber = (String) requestBody.get("sendNumber");
            String content = (String) requestBody.get("content");
            String reserveTime = (String) requestBody.get("reserveTime");

            List<Map<String, String>> receivers = objectMapper.convertValue(requestBody.get("receivers"), new TypeReference<List<Map<String, String>>>() {});

            Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
            int companySeq = 0;
            if (authentication != null && authentication.getPrincipal() instanceof CustomUserDetails) {
                CustomUserDetails userDetails = (CustomUserDetails) authentication.getPrincipal();
                companySeq = userDetails.getUser().getCompanySeq(); // 가정: User 객체에 companyId가 있다고 가정
            }

            for (Map<String, String> receiver : receivers) {
                SmsLogReq logReq = new SmsLogReq();
                logReq.setTitle(content.length() > 20 ? content.substring(0, 20) + "..." : content);
                logReq.setResult("Sent"); // 실제 발송 결과에 따라 변경 필요
                logReq.setSend_no(sendNumber);
                logReq.setReceive_no(receiver.get("userHp"));
                logReq.setUser_id(receiver.get("userId"));
                logReq.setCompany_seq(companySeq);
                logReq.setWrite_time(LocalDateTime.now());
                logReq.setSend_type("SMS"); // 또는 MMS, 실제 타입에 따라 설정
                logReq.setMemo(content);

                if (reserveTime != null && !reserveTime.isEmpty()) {
                    logReq.setReserve_time(LocalDateTime.parse(receiver.get("reserveTime")));
                }

                smsLogService.insertSmsLog(logReq);
            }
        } catch (Exception e) {
            log.error("Error logging SMS: ", e);
        }
    }*/



}
