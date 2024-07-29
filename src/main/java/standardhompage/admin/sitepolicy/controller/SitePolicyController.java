package standardhompage.admin.sitepolicy.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import standardhompage.admin.sitepolicy.service.SitePolicyService;
import standardhompage.dto.policy.PolicyRes;

@Controller
@RequestMapping("/admin")
public class SitePolicyController {
	
	@Autowired
	private SitePolicyService policyService;
	

	@GetMapping("/sitePolicy")
	public String sitePolicy() {
		return "/admin/sitePolicy";
	}
	
	/**
	 * 약관 등록
	 * InsertSitePolisy
	 */
	@PostMapping("/insertSitePolicy")
	public ResponseEntity<Object> insertSitePolicy(HttpServletRequest req, 
			@RequestParam("editorContent1") String editorContent1,@RequestParam("editorContent2") String editorContent2) {
		
		Map<String, Object> response = new HashMap<>();
		try {
			policyService.insertSitePolicy(editorContent1,editorContent2);
			
			response.put("message", "Request was Success");
			response.put("status", HttpStatus.OK.value());
			return new ResponseEntity<>(response, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			response.put("message", "Request was Fail");
			response.put("status", HttpStatus.BAD_REQUEST.value());
			return new ResponseEntity<>(response, HttpStatus.BAD_REQUEST);
		}
	}
	
	/**
	 * 약관 조회
	 * @return 성공 여부 및 약관 데이터
	 */
	@GetMapping("/policyData")
	public ResponseEntity<Object> policyData(){
		Map<String, Object> response = new HashMap<>();
		try {
			PolicyRes policyRes = policyService.policyData();
			
			response.put("policyData", policyRes);
			response.put("message", "Request was Success");
			return new ResponseEntity<>(response, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			response.put("message", "Request was Fail");
			return new ResponseEntity<>(response, HttpStatus.BAD_REQUEST);
		}
	}
	
	
}
