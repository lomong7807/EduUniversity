package standardhompage.admin.adminLog;

import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.log4j.Log4j2;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import standardhompage.admin.adminLog.service.AdminLogService;
import standardhompage.comnUtil.BaseLogAop;
import standardhompage.comnUtil.LoggingUtil;
import standardhompage.dto.adminLog.AdminLogReq;

import java.time.LocalDateTime;
import java.util.Map;

@Log4j2
@Aspect
@Component
public class AdminLogAop extends BaseLogAop {

    @Autowired
    private HttpServletRequest request;

    @Autowired
    private AdminLogService adminLogService;

    @Pointcut("@annotation(org.springframework.web.bind.annotation.GetMapping) " +
            "&& execution(* standardhompage.admin..*.*(..)) " +
            "&& !execution(public * get*(..))")
    public void adminGetMappingMethods() {}

    @Pointcut("@annotation(org.springframework.web.bind.annotation.PostMapping) && execution(* standardhompage.admin..*.*(..))")
    public void adminPostMappingMethods() {}

    @Pointcut("execution(public * *insert*(..)) || execution(public * *Insert*(..))")
    public void insertMethods() {}

    @Pointcut("execution(public * *update*(..)) || execution(public * *Update*(..))")
    public void updateMethods() {}

    @Pointcut("execution(public * *delete*(..)) || execution(public * *Delete*(..))")
    public void deleteMethods() {}

    @Pointcut("execution(public * *login*(..))")
    public void loginMethods() {}


    @After("adminGetMappingMethods()")
    public void viewLog(JoinPoint joinPoint) {
        Map<String, Object> params = LoggingUtil.getMethodParams(joinPoint);
        logAction(joinPoint, "view", params, request);
    }

    @After("adminPostMappingMethods() && insertMethods()")
    public void insertLog(JoinPoint joinPoint) {
        Map<String, Object> params = LoggingUtil.getMethodParams(joinPoint);
        logAction(joinPoint, "insert", params, request);
    }

    @After("adminPostMappingMethods() && updateMethods()")
    public void updateLog(JoinPoint joinPoint) {
        Map<String, Object> params = LoggingUtil.getMethodParams(joinPoint);
        logAction(joinPoint, "update", params, request);
    }

    @After("adminPostMappingMethods() && deleteMethods()")
    public void deleteLog(JoinPoint joinPoint) {
        Map<String, Object> params = LoggingUtil.getMethodParams(joinPoint);
        logAction(joinPoint, "delete", params, request);
    }

    @After("adminPostMappingMethods() && loginMethods()")
    public void loginLog(JoinPoint joinPoint) {
        Map<String, Object> params = LoggingUtil.getMethodParams(joinPoint);
        logAction(joinPoint, "login", params, request);
    }

    @Override
    protected void insertLog(Object logReq) {
        if (logReq instanceof AdminLogReq) {
            adminLogService.insertAdminLog((AdminLogReq) logReq);
        } else {
            log.error("Invalid log request type: {}", logReq.getClass().getName());
            throw new IllegalArgumentException("Invalid log request type");
        }
    }

    @Override
    protected Object createLogReq(String action, String userId, LocalDateTime currentTime, Map<String, Object> params, HttpServletRequest request) {
        AdminLogReq req = new AdminLogReq();
        req.setJob_name(action);
        req.setWrite_ip(request.getRemoteAddr());
        req.setJob_url(request.getRequestURI());
        req.setWrite_id(userId);
        req.setWrite_time(currentTime);
        req.setForm_value(params.toString());
        return req;
    }


}
