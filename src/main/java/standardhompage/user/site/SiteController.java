package standardhompage.user.site;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import standardhompage.admin.boardConfig.service.BoardConfigService;
import standardhompage.admin.boardMng.service.BoardMngService;
import standardhompage.admin.boardcategory.service.BoardCategoryService;
import standardhompage.dto.board.BoardReq;
import standardhompage.dto.board.BoardRes;
import standardhompage.dto.sitemenu.SiteMenuRes;

@Controller
@RequestMapping("/site")
public class SiteController {

	@Autowired
	private BoardConfigService boardConfigService;

	@Autowired
	private BoardCategoryService boardCategoryService;

	@Autowired
	private SiteService siteService;

	@Autowired
	private BoardMngService boardService;
	
	@GetMapping("/menu/{menu_seq}")
	   public String returnMenu(@PathVariable("menu_seq") int menu_seq, Model model) {
	      SiteMenuRes res = siteService.getSelectedMenu(menu_seq);
	      model.addAttribute("selectedMenu",siteService.getSelectedMenu(menu_seq));
	      // category 가 타는게 board_config_seq ? ㅇㅇ -- >아그럼 그대로 진행.
	      // board_config_seq != menu_seq categoryList
	      if(res.getMenu_type().equals("board")) {
	         model.addAttribute("config", siteService.getConfigDetail(menu_seq));
	         model.addAttribute("cate", siteService.getAllCateList(menu_seq));
	      }
	      return siteService.returnMenu(menu_seq);
	   }
	
	@GetMapping("/getHeader")
	@ResponseBody
	public Map<String, Object> getHeader() {
		return siteService.getHeader();
	}

	@GetMapping("/getSideBar/{menu_seq}")
	@ResponseBody
	public Map<String, Object> getSiedeBar(@PathVariable("menu_seq") int menu_seq) {
		return siteService.getSideBar(menu_seq);
	}

	@PostMapping("/getBoardList")
	@ResponseBody
	public ResponseEntity<Map<String, Object>> getBoardList(@RequestParam(name = "page", defaultValue = "1") int page,
			@RequestParam(name = "pageSize", defaultValue = "10") Integer pageSize,
			@RequestParam(name = "searchCate", required = false) String searchCate,
			@RequestParam(name = "keyword", required = false) String keyword,
			@RequestParam(name = "config_seq", defaultValue = "0") Integer config_seq,
			@RequestParam(name = "category_seq", defaultValue = "0") Integer category_seq) {
		return ResponseEntity.ok(siteService.getBoardList(page, pageSize, searchCate, keyword, config_seq,category_seq));
	}
	
	

	// 게시판 별 작성 페이지 이동
	@GetMapping("/write/{config_seq}")
	public String write(@PathVariable("config_seq") int config_seq, Model model) {
		int menu_seq = siteService.returnMenuSeq(config_seq);
		model.addAttribute("selectedMenu",siteService.getSelectedMenu(menu_seq));
		model.addAttribute("menu_seq", siteService.returnMenuSeq(config_seq));
		model.addAttribute("config", boardConfigService.getConfigDetail(config_seq));
		model.addAttribute("cate", boardCategoryService.getAllCateList(config_seq));
		
		return "/user/board/board_write";
	}
	
	/**
	 * board.jsp -> write.jsp
	 * @param board_seq
	 * @return
	 */
	@GetMapping("/write/update/{board_seq}/{config_seq}")
	public String updateWrite(@PathVariable("board_seq")int board_seq,@PathVariable("config_seq")int config_seq, Model model) {
		int menu_seq = siteService.returnMenuSeq(config_seq);
		model.addAttribute("selectedMenu",siteService.getSelectedMenu(menu_seq));
		model.addAttribute("config", boardConfigService.getConfigDetail(config_seq));
		model.addAttribute("cate", boardCategoryService.getAllCateList(siteService.returnConfigSeqFromBoard(board_seq)));
		return "/user/board/board_write";
	}
	
	/**
	 * Board update
	 * @param board_seq
	 * @param boardReq
	 * @param content
	 * @param files
	 * @return
	 */
	@PostMapping("/write/update/{board_seq}")
	public ResponseEntity<Object> updataBoardData(@PathVariable("board_seq")int board_seq,
				MultipartHttpServletRequest req,
				BoardReq boardReq,
				@RequestParam("editorContent")String content, 
				@RequestParam("files") List<MultipartFile> files
				){
		
		Map<String, Object> response = new HashMap<>();

		try {
			siteService.updateBoardData(req, boardReq, content, files);
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
	

	@GetMapping("/write/getBoardDetail/{board_seq}")
	@ResponseBody
	public ResponseEntity<BoardRes> getBoardDetail(@PathVariable("board_seq")int board_seq){
		return ResponseEntity.ok(boardService.getBoardDetail(board_seq));
	}
	/**
	 * 게시판 작성 데이터 입력
	 * 
	 * @param req
	 * @param session
	 * @param boardReq
	 * @param content
	 * @param files
	 * @return
	 */
	@PostMapping("/write/insertBoardData")
	public ResponseEntity<Object> inputBoardData(MultipartHttpServletRequest req, BoardReq boardReq, @RequestParam("editorContent") String content,
			@RequestParam("files") List<MultipartFile> files) {
		Map<String, Object> response = new HashMap<>();
			
		try {
			siteService.insertBoardData(req, boardReq, content, files);
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

	@GetMapping("/update/{board_seq}")
	public String update(@PathVariable("board_seq") int board_seq, Model model) {
		model.addAttribute("config", boardConfigService.getConfigDetail(board_seq));
		model.addAttribute("board", boardService.getBoardDetail(board_seq));
		return "/user/board/board_write";
	}
}
