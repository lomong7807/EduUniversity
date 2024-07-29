package standardhompage.admin.smsMng.controller;

import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import standardhompage.admin.smsMng.service.SmsMngService;
import standardhompage.admin.userMng.service.UserMngService;

import java.util.HashMap;
import java.util.Map;

@Log4j2
@Controller
@RequestMapping("admin")
public class SmsMngController {

    @Autowired
    private SmsMngService smsMngService;

    @Autowired
    private UserMngService userMngService;

    @GetMapping("/smsMng")
    public String smsMng(Model model) {

        log.error(smsMngService.getSendNumber());
        model.addAttribute("sendNumber", smsMngService.getSendNumber());

        return "/admin/smsMng";
    }

    @PostMapping("/searchSmsMngUser")
    @ResponseBody
    public ResponseEntity<Map<String, Object>> searchSmsMngUser(@RequestParam(name = "startDate", required = false) String startDate,
                                                            @RequestParam(name = "endDate", required = false) String endDate,
                                                            @RequestParam(name = "searchCate", required = false) String searchCate,
                                                            @RequestParam(name = "keyword", required = false) String keyword) {
        Map<String, Object> result = userMngService.getUserList(startDate, endDate, searchCate, keyword);

        if (result.containsKey("error")) {
            return ResponseEntity.badRequest().body(result);
        }

        return ResponseEntity.ok(result);
    }

    @PostMapping("/searchSmsMngLog")
    @ResponseBody
    public ResponseEntity<Map<String, Object>> searchSmsMngLog(@RequestParam(name = "page", defaultValue = "1") Integer page,
                                                               @RequestParam(name = "pageSize", defaultValue = "20") Integer pageSize,
                                                               @RequestParam(name = "searchCate", required = false) String searchCate,
                                                               @RequestParam(name = "resultCate", required = false) String resultCate,
                                                               @RequestParam(name = "sendTypeCate", required = false) String sendTypeCate,
                                                               @RequestParam(name = "dateTypeCate", required = false) String dateTypeCate,
                                                               @RequestParam(name = "startDate", required = false) String startDate,
                                                               @RequestParam(name = "endDate", required = false) String endDate,
                                                               @RequestParam(name = "keyword", required = false) String keyword) {
        Map<String, Object> result = smsMngService.getSmsLogList(
                page, pageSize, searchCate, resultCate, sendTypeCate, dateTypeCate, startDate, endDate, keyword);

        if (result.containsKey("error")) {
            return ResponseEntity.badRequest().body(result);
        }

        return ResponseEntity.ok(result);
    }

    @PostMapping("/getSmsMngTemplate")
    @ResponseBody
    public ResponseEntity<Map<String, Object>> getSmsMngTemplate() {
        Map<String, Object> result = smsMngService.getTemplateList();

        if (result.containsKey("error")) {
            return ResponseEntity.badRequest().body(result);
        }

        return ResponseEntity.ok(result);
    }

    @PostMapping("/insertSmsMngTemplate")
    @ResponseBody
    public ResponseEntity<Map<String, Object>> insertSmsMngTemplate(@RequestParam(name = "content") String content,
                                                                    @RequestParam(name = "company_seq") Integer company_seq) {
        Map<String, Object> result = smsMngService.insertTemplate(content, company_seq);

        if (result.containsKey("error")) {
            return ResponseEntity.badRequest().body(result);
        }

        return ResponseEntity.ok(result);
    }

    @PostMapping("/updateSmsMngTemplate")
    @ResponseBody
    public ResponseEntity<Map<String, Object>> updateSmsMngTemplate(@RequestParam(name = "content") String content,
                                                                    @RequestParam(name = "sms_template_seq") Integer sms_template_seq,
                                                                    @RequestParam(name = "company_seq") Integer company_seq) {
        Map<String, Object> result = smsMngService.updateTemplate(content, sms_template_seq, company_seq);

        if (result.containsKey("error")) {
            return ResponseEntity.badRequest().body(result);
        }

        return ResponseEntity.ok(result);
    }

    @PostMapping("/deleteSmsMngTemplate")
    @ResponseBody
    public ResponseEntity<Map<String, Object>> deleteSmsMngTemplate(@RequestParam(name = "sms_template_seq") Integer sms_template_seq,
                                                                    @RequestParam(name = "company_seq") Integer company_seq) {
        Map<String, Object> result = smsMngService.deleteTemplate(sms_template_seq, company_seq);

        if (result.containsKey("error")) {
            return ResponseEntity.badRequest().body(result);
        }

        return ResponseEntity.ok(result);
    }

    @PostMapping("/sendSingleSms")
    @ResponseBody
    public ResponseEntity<Map<String, Object>> sendSingleSms(@RequestBody Map<String, Object> requestBody) {

        log.error(requestBody.toString());

        Map<String, Object> result = smsMngService.sendSingleSms(requestBody);

        if (result.containsKey("error")) {
            return ResponseEntity.badRequest().body(result);
        }

        Map<String, Object> response = new HashMap<>();
        response.put("isAllSuccess", result.get("isAllSuccess"));
        response.put("totalCount", result.get("totalCount"));
        response.put("successCount", result.get("successCount"));
        response.put("failCount", result.get("failCount"));
        response.put("resultMsg", result.get("resultMsg"));

        if (!((Boolean) result.get("isAllSuccess"))) {
            response.put("failedList", result.get("failedList"));
        }

        return ResponseEntity.ok(response);
    }

    @PostMapping("/sendMultipleSms")
    @ResponseBody
    public ResponseEntity<Map<String, Object>> sendMultipleSms(@RequestBody Map<String, Object> requestBody) {

        log.error(requestBody.toString());

        Map<String, Object> result = smsMngService.sendMultipleSms(requestBody);

        if (result.containsKey("error")) {
            return ResponseEntity.badRequest().body(result);
        }

        Map<String, Object> response = new HashMap<>();
        response.put("isAllSuccess", result.get("isAllSuccess"));
        response.put("totalCount", result.get("totalCount"));
        response.put("successCount", result.get("successCount"));
        response.put("failCount", result.get("failCount"));
        response.put("resultMsg", result.get("resultMsg"));

        if (!((Boolean) result.get("isAllSuccess"))) {
            response.put("failedList", result.get("failedList"));
        }

        return ResponseEntity.ok(response);
    }
}
