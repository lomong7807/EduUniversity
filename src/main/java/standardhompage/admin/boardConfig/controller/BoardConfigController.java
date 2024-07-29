package standardhompage.admin.boardConfig.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import jakarta.servlet.http.HttpSession;
import standardhompage.admin.boardConfig.service.BoardConfigService;
import standardhompage.dto.boardConfig.BoardConfigReq;

@Controller
@RequestMapping("admin")
public class BoardConfigController {

	@Autowired
	BoardConfigService service;

	@Autowired
	HttpSession session;

	@GetMapping("/boardConfig")
	public String boardMng(Model model) {
//		model.addAttribute("boardMngList", service.getAllBoardConfig());
		return "/admin/boardConfig";
	}

	@GetMapping("/configUpdate/{config_seq}")
	public String configDetail(@PathVariable("config_seq") int config_seq, Model model) {
		model.addAttribute("config", service.getConfigDetail(config_seq));
		model.addAttribute("boardType", service.getBoardType());
		return "/admin/boardConfigUpdate";
	}

	@PostMapping("/configUpdateProc")
	@ResponseBody
	public int configUpdateProc(BoardConfigReq req) {
		service.configUpdate(req);
		return 1;
	}

	// board type 별 미리보기 제공.
	@GetMapping("/boardEx/{board_type_seq}")
	public String getBoardEx(@PathVariable("board_type_seq") int board_type_seq) {
		System.out.println("===========================================");
		System.out.println(board_type_seq);
		System.out.println(service.getBoardExByBoardTypeSeq(board_type_seq));
		System.out.println("===========================================");
		return "/admin/configEx/" + service.getBoardExByBoardTypeSeq(board_type_seq);
	}

	@PostMapping("/getConfigList")
	@ResponseBody
	public ResponseEntity<Map<String, Object>> getBoardConfigList(
			@RequestParam(name = "page", defaultValue = "1") Integer page,
			@RequestParam(name = "pageSize", defaultValue = "20") Integer pageSize) {
		return ResponseEntity.ok(service.getAllBoardConfigList(page, pageSize));
	}

	@PostMapping("/configDelete")
	@ResponseBody
	public int configDelete(@RequestBody Map<String, Object> map) {
		service.configDelete((String) map.get("delConfigs"));
		return 1;
	}
}
