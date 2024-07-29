package standardhompage.admin.bannermng.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import jakarta.servlet.http.HttpServletRequest;
import standardhompage.admin.bannermng.service.BannerMngService;
import standardhompage.dto.banner.BannerMngInputReq;

@Controller
@RequestMapping("/admin")
public class BannerMngController {

	@Autowired
	private BannerMngService bannerService;

	@GetMapping("/bannerMng")
	public String home() {
		return "/admin/bannerMng";
	}

	@GetMapping("/bannerReg")
	public String register(@RequestParam(value = "banner_seq", required = false) Integer banner_seq) {
		return "/admin/bannerReg";
	}
	
	/**
	 * 배너 데이터 조회
	 * @param page
	 * @param pageSize
	 * @param searchCate
	 * @param keyword
	 * @param banner_seq
	 * @return
	 */
	@PostMapping("/bannerMngList")
	@ResponseBody
	public ResponseEntity<Map<String, Object>> bannerMngList(@RequestParam(name = "page", defaultValue = "1") Integer page,
			@RequestParam(name = "pageSize", defaultValue = "10") Integer pageSize, @RequestParam(name = "searchCate", required = false) String searchCate,
			@RequestParam(name = "keyword", required = false) String keyword, @RequestParam(name = "popup_seq", defaultValue = "0") Integer banner_seq) {
		
		return ResponseEntity.ok(bannerService.getBannerList(page, pageSize, searchCate, keyword, banner_seq));
	}
	
	/**
	 * 배너 등록
	 * @param bannerInputReq
	 * @param req
	 * @return
	 */
	@PostMapping("/insertBannerData")
	public ResponseEntity<Object> insertBannerData(@ModelAttribute BannerMngInputReq bannerInputReq, HttpServletRequest req) {
		Map<String, Object> response = new HashMap<>();
		try {
			bannerService.serviceController(bannerInputReq, req);

			response.put("message", "Request was Success");
			response.put("status", HttpStatus.OK);
			return new ResponseEntity<>(response, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			response.put("message", "Request was Fail");
			response.put("status", HttpStatus.BAD_REQUEST);
			return new ResponseEntity<>(response, HttpStatus.BAD_REQUEST);
		}

	}
	
	/**
	 * 배너 목록 삭제
	 * @param checkedValues
	 * @return
	 */
	@PostMapping("/bannerMngDelete")
	@ResponseBody
	public ResponseEntity<Map<String, Object>> bannerMngDelete(@RequestParam(name = "checkedValues") String checkedValues) {
		
		return ResponseEntity.ok(bannerService.deleteBannerData(checkedValues));
	}
	
	

}
