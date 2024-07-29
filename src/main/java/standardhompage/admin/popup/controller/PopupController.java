package standardhompage.admin.popup.controller;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
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
import org.springframework.web.multipart.MultipartHttpServletRequest;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import standardhompage.admin.popup.service.PopupService;
import standardhompage.dto.popup.PopupReq;
import standardhompage.dto.popup.PopupRes;

@Controller
@RequestMapping("/admin")
public class PopupController {

	@Autowired
	private PopupService popupService;

	@GetMapping("/popup")
	public String popup() {
		return "/admin/popup";
	}

	@GetMapping("/popupReg")
	public String popupReg(@RequestParam(value = "popup_seq", required = false) Integer popup_seq) {
		return "/admin/popupReg";
	}

	/**
	 * 설명 : List 조회 및 Popup 데이터 조회
	 * 
	 * @param page
	 * @param pageSize
	 * @param searchCate
	 * @param keyword
	 * @return ResponseEntity
	 */
	@PostMapping("/popupMngSearch")
	@ResponseBody
	public ResponseEntity<Map<String, Object>> popupMngSearch(@RequestParam(name = "page", defaultValue = "1") Integer page,
			@RequestParam(name = "pageSize", defaultValue = "10") Integer pageSize, @RequestParam(name = "searchCate", required = false) String searchCate,
			@RequestParam(name = "keyword", required = false) String keyword, @RequestParam(name = "popup_seq", defaultValue = "0") Integer popup_seq) {
		
		return ResponseEntity.ok(popupService.popupList(page, pageSize, searchCate, keyword, popup_seq));
	}

	/**
	 * 2024-06-24 "Popup 등록 페이지 Data insert or update"
	 * 
	 * @param popupReq
	 * @param content
	 * @param req
	 * @param session
	 * @return ResponseEntity<Object>
	 */
	@PostMapping("/insertPopupData")
//	public ResponseEntity<Object> insertPopupData(@ModelAttribute PopupReq popupReq, @RequestParam("editorContent") String content,
	public ResponseEntity<Object> inputPopupData(@ModelAttribute PopupReq popupReq, @RequestParam("editorContent") String content,
			@RequestParam(name = "popup_seq", defaultValue = "0") String popup_seq, MultipartHttpServletRequest req) {

		Map<String, Object> response = new HashMap<>();
		try {
			popupService.serviceController(popupReq, content, popup_seq, req);

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
	 * 팝업목록 삭제
	 */
	@PostMapping("/popupMngDelete")
	@ResponseBody
	public ResponseEntity<Map<String, Object>> popupMngDelete(@RequestParam(name = "checkedValues") String checkedValues) {
		
		return ResponseEntity.ok(popupService.deletePopupData(checkedValues));
	}
}
