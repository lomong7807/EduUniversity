package standardhompage.admin.smsMng.service;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.extern.log4j.Log4j2;
import net.nurigo.sdk.NurigoApp;
import net.nurigo.sdk.message.exception.NurigoMessageNotReceivedException;
import net.nurigo.sdk.message.model.Message;
import net.nurigo.sdk.message.request.SingleMessageSendingRequest;
import net.nurigo.sdk.message.response.MultipleDetailMessageSentResponse;
import net.nurigo.sdk.message.response.SingleMessageSentResponse;
import net.nurigo.sdk.message.service.DefaultMessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import standardhompage.admin.smsConfig.mapper.SmsConfigMapper;
import standardhompage.admin.smsMng.mapper.SmsMngMapper;
import standardhompage.dto.adminLog.AdminLogReq;
import standardhompage.dto.smsLog.SmsLogReq;
import standardhompage.dto.smsLog.SmsLogRes;
import standardhompage.dto.smsTemplate.SmsTemplateReq;
import standardhompage.dto.smsTemplate.SmsTemplateRes;

import java.io.IOException;
import java.time.Instant;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.ZoneOffset;
import java.time.format.DateTimeFormatter;
import java.util.*;
import java.util.stream.Collectors;

@Log4j2
@Service
public class SmsMngService {


    DefaultMessageService messageService = NurigoApp.INSTANCE.initialize("NCSZ95SP1XRY6J9S", "VDPR4QQLUPHVAVMPHL9DCWD9HNHY6DFY", "https://api.solapi.com");

    @Autowired
    private SmsMngMapper smsMngMapper;

    @Autowired
    private SmsConfigMapper smsConfigMapper;

    public Map<String, Object> getSmsLogList(int page,
                                             int pageSize,
                                             String searchCate,
                                             String resultCate,
                                             String sendTypeCate,
                                             String dateTypeCate,
                                             String startDate,
                                             String endDate,
                                             String keyword){
        Map<String, Object> result = new HashMap<>();

        try {

            int offset = (page - 1) * pageSize;
            List<SmsLogRes> smsLogList = smsMngMapper.getSmsLogList(pageSize,
                    offset, searchCate, resultCate, sendTypeCate, dateTypeCate, startDate, endDate, keyword);
            int totalRecords = smsMngMapper.getSmsLogListCount(searchCate, keyword, resultCate, sendTypeCate, dateTypeCate, startDate, endDate);

            result.put("logList", smsLogList);
            result.put("totalRecords", totalRecords);
            result.put("currentPage", page);
            result.put("pageSize", pageSize);

        } catch (Exception e) {
            log.error("Exception [smsMngService.getSmsLogListService] : {}", e.getStackTrace()[0]);
            result.put("error", "An error occurred while fetching Sms Log info list page");
            result.put("errorMessage", e.getMessage());
            throw new RuntimeException(e);
        }
        return result;
    }

    public String getSendNumber() {

        String sendNumber;

        try {
            sendNumber = smsConfigMapper.getSmsConfig().getSend_number();

            if(sendNumber == null){
                sendNumber = "";
            }

        } catch (Exception e) {
            log.error("Exception [smsMngService.getSendNumberService] : {}", e.getStackTrace()[0]);
            throw new RuntimeException(e);
        }
        return sendNumber;
    }

    public Map<String, Object> getTemplateList(){
        Map<String, Object> result = new HashMap<>();

        try {

            List<SmsTemplateRes> templateList = smsMngMapper.getTemplateList();

            result.put("templateList", templateList);

        } catch (Exception e) {
            log.error("Exception [smsMngService.getTemplateListService] : {}", e.getStackTrace()[0]);
            result.put("error", "An error occurred while fetching Template info list page");
            result.put("errorMessage", e.getMessage());
            throw new RuntimeException(e);
        }
        return result;
    }

    public Map<String, Object> insertTemplate(String content, int company_seq){
        Map<String, Object> result = new HashMap<>();
        LocalDateTime currentTime = LocalDateTime.now();
        SmsTemplateReq req = new SmsTemplateReq();

        try {

            req.setTitle(content);
            req.setContent(content);
            req.setCompany_seq(company_seq);
            req.setWrite_time(currentTime);

            int insertResult = smsMngMapper.insertTemplate(req);

            result.put("result", insertResult);

        } catch (Exception e) {
            log.error("Exception [smsMngService.insertTemplateService] : {}", e.getStackTrace()[0]);
            result.put("error", "An error occurred while fetching Template insert page");
            result.put("errorMessage", e.getMessage());
            throw new RuntimeException(e);
        }
        return result;
    }

    public Map<String, Object> updateTemplate(String content, int sms_template_seq, int company_seq){
        Map<String, Object> result = new HashMap<>();
        SmsTemplateReq req = new SmsTemplateReq();

        try {

            req.setSms_template_seq(sms_template_seq);
            req.setTitle(content);
            req.setContent(content);
            req.setCompany_seq(company_seq);

            int updateResult = smsMngMapper.updateTemplate(req);

            result.put("result", updateResult);

        } catch (Exception e) {
            log.error("Exception [smsMngService.updateTemplateService] : {}", e.getStackTrace()[0]);
            result.put("error", "An error occurred while fetching Template update page");
            result.put("errorMessage", e.getMessage());
            throw new RuntimeException(e);
        }
        return result;
    }

    public Map<String, Object> deleteTemplate(int sms_template_seq, int company_seq){
        Map<String, Object> result = new HashMap<>();

        try {

            int deleteResult = smsMngMapper.deleteTemplate(sms_template_seq, company_seq);

            result.put("result", deleteResult);

        } catch (Exception e) {
            log.error("Exception [smsMngService.deleteTemplateService] : {}", e.getStackTrace()[0]);
            result.put("error", "An error occurred while fetching Template delete page");
            result.put("errorMessage", e.getMessage());
            throw new RuntimeException(e);
        }
        return result;
    }


    // Send Sms
    public Map<String, Object> sendSingleSms(Map<String, Object> requestBody) {
        Map<String, Object> result = new HashMap<>();
        String resultMsg = "발송";

        String sendNumber = formatPhoneNumber((String)requestBody.get("sendNumber"));
        Map<String, String> receiver = (Map<String, String>) requestBody.get("receiver");
        String receiverNumber = formatPhoneNumber(receiver.get("userHp"));
        String content = (String) requestBody.get("content");

        log.info("Sending single SMS - From: {}, To: {}", sendNumber, receiverNumber);

        log.error(requestBody.toString());

        Instant reserveTime = null;
        if (!((String)requestBody.get("reserveTime")).isEmpty()) {
            reserveTime = parseReserveTime((String)requestBody.get("reserveTime"));
            resultMsg = "발송 예약";
        }

        try {
            result = sendSingleMessage(sendNumber, receiverNumber, content, reserveTime);
            result.put("resultMsg", resultMsg);
            result.put("totalCount", 1);
            result.put("successCount", result.get("isAllSuccess").equals(true) ? 1 : 0);
            result.put("failCount", result.get("isAllSuccess").equals(true) ? 0 : 1);
        }catch (Exception e){
            log.error("Error sending single SMS: ", e);
            result.put("error", "Failed to send SMS");
            result.put("errorMessage", e.getMessage());
            result.put("isAllSuccess", false);
            result.put("totalCount", 1);
            result.put("successCount", 0);
            result.put("failCount", 1);
        }

        result.put("resultMsg", resultMsg);

        return result;
    }

    private Map<String, Object> sendSingleMessage(String sendNumber, String receiver, String content, Instant reserveTime) {
        Map<String, Object> result = new HashMap<>();
        Message message = createMessage(sendNumber, receiver, content);

        try {
            if (reserveTime != null) {
                MultipleDetailMessageSentResponse response = messageService.send(message, reserveTime);
                log.info("Reserved message sent. Response: {}", response);

                boolean isSuccess = response.getFailedMessageList().isEmpty();
                result.put("isAllSuccess", isSuccess);

                if(!isSuccess){
                    result.put("failedMessages", response.getFailedMessageList());
                }

            } else {
                SingleMessageSentResponse response = messageService.sendOne(new SingleMessageSendingRequest(message));
                log.info("Immediate message sent. Response: {}", response);

                assert response != null;
                boolean isSuccess = "2000".equals(response.getStatusCode());
                result.put("isAllSuccess", isSuccess);
            }

        } catch (Exception e) {
            log.error("Exception [smsMngService.sendSmsService] : {}", e.getStackTrace()[0]);
            result.put("isAllSuccess", false);
            result.put("error", "An error occurred while sending SMS");
            result.put("errorMessage", e.getMessage());
        }

        return result;
    }

    // Send Sms
    public Map<String, Object> sendMultipleSms(Map<String, Object> requestBody) {
        Map<String, Object> result = new HashMap<>();
        String resultMsg = "발송";

        String sendNumber = formatPhoneNumber((String)requestBody.get("sendNumber"));
        List<Map<String, String>> receivers = (List<Map<String, String>>) requestBody.get("receivers");
        String content = (String) requestBody.get("content");

        log.info("Sending multiple SMS - From: {}, To: {} receivers", sendNumber, receivers.size());

        List<String> receiverNumbers = receivers.stream()
                        .map(receiver -> formatPhoneNumber(receiver.get("userHp")))
                        .toList();

        Instant reserveTime = null;
        if (!((String)requestBody.get("reserveTime")).isEmpty()) {
            reserveTime = parseReserveTime((String)requestBody.get("reserveTime"));
            resultMsg = "발송 예약";
        }

        try {
            result = sendMultipleMessages(sendNumber, receiverNumbers, content, reserveTime);
            result.put("resultMsg", resultMsg);
        }catch (Exception e){
            log.error("Error sending multiple SMS: ", e);
            result.put("error", "Failed to send SMS");
            result.put("errorMessage", e.getMessage());
            result.put("isAllSuccess", false);
            result.put("totalCount", receivers.size());
            result.put("successCount", 0);
            result.put("failCount", receivers.size());
        }

        result.put("resultMsg", resultMsg);

        return result;
    }

    private Map<String, Object> sendMultipleMessages(String sendNumber, List<String> receiverList, String content, Instant reserveTime) {
        Map<String, Object> result = new HashMap<>();
        List<Message> messageList = receiverList.stream()
                .map(receiver -> createMessage(sendNumber, receiver, content))
                .collect(Collectors.toList());

        try {
            MultipleDetailMessageSentResponse response;
            if (reserveTime != null) {
                response = messageService.send(messageList, reserveTime);
            } else {
                response = messageService.send(messageList, false, true);
            }

            log.info("Bulk messages sent. Response: {}", response);

            int totalCount = messageList.size();
            int failCount = response.getFailedMessageList().size();
            int successCount = totalCount - failCount;

            result.put("isAllSuccess", failCount == 0);
            result.put("totalCount", totalCount);
            result.put("successCount", successCount);
            result.put("failCount", response.getFailedMessageList().size());

            if(failCount > 0){
                result.put("failedMessages", response.getFailedMessageList());
            }

        } catch (NurigoMessageNotReceivedException exception) {
            log.error(exception);
            result.put("error", "An error occurred while sending SMS");
            result.put("errorMessage", exception.getMessage());
            result.put("failedList", exception.getFailedMessageList());
            result.put("successCount", 0);
        } catch (Exception exception) {
            log.error(exception);
            result.put("isAllSuccess", false);
            result.put("error", "An error occurred while sending multiple SMS");
            result.put("errorMessage", exception.getMessage());
            result.put("totalCount", messageList.size());
            result.put("successCount", 0);
            result.put("failCount", messageList.size());
        }

        return result;
    }

    private String formatPhoneNumber(String phoneNumber) {
        return phoneNumber.replaceAll("-", "");
    }

    private Instant parseReserveTime(String reserveTime) {
        LocalDateTime localDateTime = LocalDateTime.parse(reserveTime, DateTimeFormatter.ISO_LOCAL_DATE_TIME);
        ZoneOffset zoneOffset = ZoneId.systemDefault().getRules().getOffset(localDateTime);
        return localDateTime.toInstant(zoneOffset);
    }


    private Message createMessage(String sendNumber, String receiver, String content) {
        Message message = new Message();
        message.setFrom(sendNumber);
        message.setTo(receiver);
        message.setText(content);
        return message;
    }

    public void insertSmsLog(SmsLogReq req){

        try{
            smsMngMapper.insertSmsLog(req);
        }catch (Exception e){
            log.error("Exception [smsLogService.insertSmsLog] : {}", e.getStackTrace()[0]);
            throw new RuntimeException(e);
        }
    }

}
