package standardhompage.admin.boardcategory.controller;

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

import jakarta.servlet.http.HttpSession;
import standardhompage.admin.boardcategory.service.BoardCategoryService;
import standardhompage.dto.boardCategory.BoardCategoryReq;
import standardhompage.dto.boardCategory.BoardCategoryRes;
import standardhompage.dto.boardConfig.BoardConfigRes;

@Controller
@RequestMapping("/admin")
public class BoardCataegoryController {

	@Autowired
	BoardCategoryService service;

	@Autowired
	HttpSession session;

	// category 또한 menu 처럼 하위가 있는 구조이다.
	// menu_manage 에서 뽑아오자.
	@GetMapping("/boardCategory")
	public String home(Model model) {
		model.addAttribute("boardConfig", service.getAllBoardConfig());
		return "/admin/boardCategory";
	}

	@GetMapping("/boardCategoryReg")
	public String boardCategoryReg(Model model) {
		model.addAttribute("boardConfig", service.getAllBoardConfig());
		return "/admin/boardCategoryReg";
	}

	@GetMapping("/updateCate/{cate_seq}")
	public String updateCate(@PathVariable("cate_seq") int cate_seq, Model model) {
		BoardCategoryRes res = service.getCateDetail(cate_seq);
		model.addAttribute("cate", res);
		model.addAttribute("config", service.getConfigByConfigSeq(res.getConfig_seq())); // id 받아와서 게시판 선택 창 채워야함
		return "/admin/boardCategoryUpdate";
	}

	@PostMapping("/updateCateProc")
	@ResponseBody
	public int updateCateProc(BoardCategoryReq req) {
		req.setWrite_id((String) session.getAttribute("adminId"));
		return service.updateCategory(req);
	}

	@PostMapping("/boardCategoryRegProc")
	@ResponseBody
	public int boardCategoryRegProc(BoardCategoryReq req) {
		req.setWrite_id((String) session.getAttribute("adminId"));
		return service.regBoardCate(req);
	}

	@PostMapping("/boardCateSearch")
	@ResponseBody
	public Map<String, Object> boardCateSearch(@RequestParam(name = "page", defaultValue = "1") Integer page,
			@RequestParam(name = "pageSize", defaultValue = "20") Integer pageSize,
			@RequestParam(name = "config_seq", required = false) Integer config_seq) {
		Map<String, Object> result = service.getBoardCateList(page, pageSize, config_seq);
		return result;
	}

	@PostMapping("/deleteCate")
	@ResponseBody
	public int deleteCate(@RequestBody Map<String, Object> map) {
		//asdf
		return service.cateDelete((String) map.get("delCates"));
	}

}
