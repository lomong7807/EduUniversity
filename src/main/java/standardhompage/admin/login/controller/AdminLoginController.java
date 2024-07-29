package standardhompage.admin.login.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import jakarta.servlet.http.HttpSession;
import standardhompage.admin.dashboard.service.DashboardService;
import standardhompage.dto.admin.AdminInfoReq;
import standardhompage.dto.admin.AdminInfoRes;
import standardhompage.admin.login.service.AdminLoginServcie;

import java.util.Map;

@Log4j2
@Controller
@RequestMapping("admin")
public class AdminLoginController {

	@Autowired
	HttpSession session;

	@Autowired
	AdminLoginServcie adminLoginService;

	@Autowired
	DashboardService dashboardService;

	@GetMapping("/main")
	public String home(Model model, Authentication authentication) throws JsonProcessingException {
		if(authentication != null) {
			log.error("User: "+authentication.getName());
			log.error("Authorities: "+authentication.getAuthorities());
		}else{
			log.error("authentication is null======================");
		}

		ObjectMapper objectMapper = new ObjectMapper();
		String browserVisitDataJson = objectMapper.writeValueAsString(dashboardService.getVisitorByBrowser());
		String deviceVisitDataJson = objectMapper.writeValueAsString(dashboardService.getVisitorByDevice());
		String deviceVisitDailyDataJson = objectMapper.writeValueAsString(dashboardService.getVisitorByDeviceDaily());

		model.addAttribute("visitorRatio", dashboardService.getVisitorRatio());
		model.addAttribute("visitorByToday", dashboardService.getVisitorByToday());
		model.addAttribute("browserVisitDataJson", browserVisitDataJson);
		model.addAttribute("deviceVisitDataJson", deviceVisitDataJson);
		model.addAttribute("deviceVisitDailyDataJson", deviceVisitDailyDataJson);
		model.addAttribute("regUserCount", dashboardService.getRegUserCount());
		model.addAttribute("regUserCountWeekly", dashboardService.getRegUserCountWeekly());
		return "admin/adminMain";
	}

	@GetMapping("/login")
	public String login() {
		return "admin/login";
	}

	@PostMapping("/login-proc")
	@ResponseBody
	public boolean loginProc(AdminInfoReq req) {
		AdminInfoRes res = adminLoginService.getAdminById(req);
		session.setAttribute("adminId", res.getId());
		session.setAttribute("adminLevel", res.getRoleName());
		session.setAttribute("companySeq", res.getCompany_seq());
		session.setAttribute("companyId", res.getCompany_id());
		session.setAttribute("companyName", res.getCompany_name());
		return adminLoginService.loginChk(req);
	}

	@GetMapping("/logout")
	public String logout() {
		session.invalidate();
		return "redirect:/site/main";
	}

/*	@RestController
	@RequestMapping("admin/dashboard/api")
	public class DashboardApiController {

		@Autowired
		private DashboardService dashboardService;

		@GetMapping("/visitor-ratio")
		public ResponseEntity<Map<String, Object>> getvisitorRatio(){
			return ResponseEntity.ok(dashboardService.getVisitorRatio());
		}

	}*/

}
