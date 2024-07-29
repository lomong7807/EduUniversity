package standardhompage.admin.adminMng.controller;

import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import standardhompage.admin.adminMng.service.AdminMngService;
import standardhompage.dto.admin.AdminInfoReq;

import java.util.Map;

@Log4j2
@Controller
@RequestMapping("admin")
public class AdminMngController {

	@Autowired
	AdminMngService adminMngService;

	// List
	@GetMapping("/adminMng")
	public String adminMng() {

		return "/admin/adminMng";
	}

	@PostMapping("/searchAdminMng")
	@ResponseBody
	public ResponseEntity<Map<String, Object>> searchAdminMng(@RequestParam(name = "page", defaultValue = "1") Integer page,
											@RequestParam(name = "pageSize", defaultValue = "20") Integer pageSize,
											@RequestParam(name = "searchCate", required = false) String searchCate,
											@RequestParam(name = "keyword", required = false) String keyword) {
		Map<String, Object> result = adminMngService.getAdminList(page, pageSize, searchCate, keyword);

		if (result.containsKey("error")) {
			return ResponseEntity.badRequest().body(result);
		}

		return ResponseEntity.ok(result);
	}


	@PostMapping("/deleteAdminMng")
	@ResponseBody
	public ResponseEntity<Map<String, Object>> deleteAdminMng(@RequestParam(name="checkedValues") String checkedValues) {
		Map<String, Object> result = adminMngService.deleteAdminBySeq(checkedValues);

		if (result.containsKey("error")) {
			return ResponseEntity.badRequest().body(result);
		}

		return ResponseEntity.ok(result);
	}

	// Register
	@GetMapping("/adminMngRegister")
	public String adminMngRegister(Model model, @RequestParam(name = "admin_seq", required = false) Integer admin_seq) {

		model.addAttribute("admin", adminMngService.getAdminBySeq(admin_seq));

		return "/admin/adminMngRegister";
	}

	@PostMapping("/insertAdminMng")
	@ResponseBody
	public ResponseEntity<Map<String, Object>> insertAdminMng(AdminInfoReq req, HttpServletRequest request) {
		Map<String, Object> result = adminMngService.insertAdmin(req, request);

		if (result.containsKey("error")) {
			return ResponseEntity.badRequest().body(result);
		}

		return ResponseEntity.ok(result);
	}

	@PostMapping("/updateAdminMng")
	@ResponseBody
	public ResponseEntity<Map<String, Object>> updateAdminMng(AdminInfoReq req, HttpServletRequest request) {
		Map<String, Object> result = adminMngService.updateAdmin(req, request);

		if (result.containsKey("error")) {
			return ResponseEntity.badRequest().body(result);
		}

		return ResponseEntity.ok(result);
	}

	@PostMapping("/chkAdminMngId")
	@ResponseBody
	public ResponseEntity<Map<String, Object>> chkAdminMngId(String id) {
		Map<String, Object> result = adminMngService.getAdminCountById(id);

		if (result.containsKey("error")) {
			return ResponseEntity.badRequest().body(result);
		}

		return ResponseEntity.ok(result);
	}

	@PostMapping("/chkAdminMngHp")
	@ResponseBody
	public ResponseEntity<Map<String, Object>> chkAdminMngHp(String id, String hp) {
		Map<String, Object> result = adminMngService.getAdminCountByHp(id, hp);

		if (result.containsKey("error")) {
			return ResponseEntity.badRequest().body(result);
		}

		return ResponseEntity.ok(result);
	}


}
