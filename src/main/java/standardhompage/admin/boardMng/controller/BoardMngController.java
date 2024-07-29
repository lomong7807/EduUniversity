package standardhompage.admin.boardMng.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import standardhompage.admin.boardConfig.service.BoardConfigService;
import standardhompage.admin.boardMng.service.BoardMngService;
import standardhompage.admin.boardcategory.service.BoardCategoryService;
import standardhompage.dto.board.BoardRes;
import standardhompage.dto.boardCategory.BoardCategoryRes;
import standardhompage.dto.boardConfig.BoardConfigRes;

@Controller
@RequestMapping("admin")
public class BoardMngController {

	@Autowired
	BoardMngService boardMngService;

	@Autowired
	BoardConfigService configService;
	
	@Autowired
	BoardCategoryService cateService;

	@GetMapping("/boardMng")
	public String boardMng(Model model) {
		model.addAttribute("configs", configService.getAllBoardConfig());
		return "admin/boardMng";
	}

	@PostMapping("/getBoardList")
	@ResponseBody
	public Map<String, Object> getBoardList(@RequestParam(name = "page", defaultValue = "1") Integer page,
			@RequestParam(name = "pageSize", defaultValue = "20") Integer pageSize,
			@RequestParam(name = "config_seq", defaultValue = "0") Integer config_seq,
			@RequestParam(name = "cate", defaultValue = "") String cate,
			@RequestParam(name = "keyword", defaultValue = "") String keyword) {
		return boardMngService.getBoardList(page, pageSize, cate, keyword, config_seq);
	}

	@PostMapping("/boardDelete")
	@ResponseBody
	public int boardDelete(@RequestBody Map<String, Object> map) {
		return boardMngService.boardDelete((String) map.get("delBoards"));
	}
	
	@GetMapping("/updateBoard/{board_seq}")
	public String updateBoard(@PathVariable("board_seq") int board_seq, Model model) {
		BoardRes boardRes = boardMngService.getBoardDetail(board_seq);
		BoardConfigRes configRes = configService.getConfigDetail(boardRes.getConfig_seq());
		BoardCategoryRes cateRes = cateService.getCateDetail(configRes.getBoard_type_seq());
		model.addAttribute("board", boardRes);
		model.addAttribute("config",configRes);
		// boardDetail 의 경우 wirteForm 이 제대로 완성된 후 붙여넣기 할 것. 
		return "admin/boardDetail/" + cateRes.getTitle();
	}
	

}
