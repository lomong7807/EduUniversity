package standardhompage.admin.adminLog.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import standardhompage.admin.adminLog.service.AdminLogService;
import standardhompage.dto.adminLog.AdminLogRes;

@Controller
@RequestMapping("admin")
public class AdminLogController {

	@Autowired
	AdminLogService service;

	@GetMapping("log")
	public String adminLog() {
		return "admin/log";
	}

	@PostMapping("/getLogs")
	@ResponseBody
	public List<AdminLogRes> getLog() {
		return service.getLogs();
	}

}
