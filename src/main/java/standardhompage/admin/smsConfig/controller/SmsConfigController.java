package standardhompage.admin.smsConfig.controller;

import jakarta.servlet.http.HttpSession;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import standardhompage.admin.smsConfig.service.SmsConfigService;
import standardhompage.dto.smsConfig.SmsConfigReq;
import standardhompage.security.CustomUserDetails;

import java.security.Principal;
import java.util.Map;

@Log4j2
@Controller
@RequestMapping("admin")
public class SmsConfigController {

    @Autowired
    private SmsConfigService smsConfigService;

    @GetMapping("/smsConfigMng")
    public String smsConfigMng(Model model) {

        model.addAttribute("smsConfig", smsConfigService.getSmsConfig());

        return "/admin/smsConfigMng";
    }

    @PostMapping("/smsConfigInsert")
    @ResponseBody
    public ResponseEntity<Map<String, Object>> smsConfigInsert(SmsConfigReq req) {

        Map<String, Object> result = smsConfigService.insertSmsConfig(req);

        if (result.containsKey("error")) {
            return ResponseEntity.badRequest().body(result);
        }

        return ResponseEntity.ok(result);
    }

    @PostMapping("/smsConfigUpdate")
    @ResponseBody
    public ResponseEntity<Map<String, Object>> smsConfigUpdate(SmsConfigReq req) {

        Map<String, Object> result = smsConfigService.updateSmsConfig(req);

        if (result.containsKey("error")) {
            return ResponseEntity.badRequest().body(result);
        }

        return ResponseEntity.ok(result);
    }
}
