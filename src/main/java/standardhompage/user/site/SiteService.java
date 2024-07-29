package standardhompage.user.site;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import jakarta.servlet.http.HttpSession;
import standardhompage.admin.boardConfig.mapper.BoardConfigMapper;
import standardhompage.admin.boardConfig.service.BoardConfigService;
import standardhompage.admin.boardcategory.service.BoardCategoryService;
import standardhompage.admin.siteMenuMng.mapper.SiteMenuMapper;
import standardhompage.comnUtil.ComnUtil;
import standardhompage.dto.board.BoardReq;
import standardhompage.dto.board.BoardRes;
import standardhompage.dto.boardCategory.BoardCategoryRes;
import standardhompage.dto.boardConfig.BoardConfigRes;
import standardhompage.dto.sitemenu.SiteMenuRes;
import standardhompage.dto.uploadFile.UploadFileReq;
import standardhompage.dto.uploadFile.UploadFileRes;
import standardhompage.security.CustomUserDetails;

@Service
public class SiteService {

	@Autowired
	private SiteMapper siteMapper;

	@Autowired
	BoardConfigMapper configMapper;

	@Autowired
	SiteMenuMapper menuMapper;

	@Autowired
	ComnUtil comnUtil;
	
	@Autowired
	BoardConfigService boardConfigService;
	
	@Autowired
	BoardCategoryService boardCategoryService;
	
	
	/**
	 * 게시글 리스트 조회 및 페이징
	 * 
	 * @param config_seq
	 * @param cate
	 * @return List
	 */
	public Map<String, Object> getBoardList(int page, int pageSize, String searchCate, String keyword, int config_seq, int category_seq) {
		Map<String, Object> list = new HashMap<>();

		try {
			int offset = (page - 1) * pageSize;
			List<BoardRes> boardList = siteMapper.getBoardList(pageSize, offset, searchCate, keyword, config_seq, category_seq);
			int totalRecords = siteMapper.getBoardListCnt(searchCate, keyword, config_seq, category_seq);

			list.put("boardList", boardList);
			list.put("totalRecords", totalRecords);
			list.put("currentPage", page);
			list.put("pageSize", pageSize);

		} catch (Exception e) {
			list.put("errorMessage", e.getMessage());
			throw new RuntimeException(e);
		}

		return list;
	}

	public String selectBoardType(int config_seq) {
		String boardType = null;

		// config seq 조회
		int boardTypeSeq = selectBoardTypeSeq(config_seq);
		boardType = siteMapper.selectBoardType(boardTypeSeq);
		return boardType;
	}

	public int selectBoardTypeSeq(int config_seq) {
		int board_type_seq = siteMapper.selectBoardTypeSeq(config_seq);
		return board_type_seq;
	}

	public Map<String, Object> getHeader() {
		Map<String, Object> map = new HashMap<>();
		map.put("parentMenus", menuMapper.getParentMenus());
		map.put("childMenus", menuMapper.getChildMenus());
		return map;
	}

	public Map<String, Object> getSideBar(int menu_seq) {
		Map<String, Object> map = new HashMap<>();
		SiteMenuRes res = menuMapper.getParentMenu(menu_seq);
		map.put("pMenu", menuMapper.getParentMenu(menu_seq));
		map.put("cMenuList", menuMapper.getMenusByPSeq(res.getP_menu_seq()));
		return map;
	}

	public String returnMenu(int menu_seq) {
		return siteMapper.returnMenu(menu_seq);
	}

	/**
	 * Board Insert
	 * Editor / File 저장 및 Board Data Insert 
	 * @param req
	 * @param session
	 * @param boardReq
	 * @param content
	 * @param files
	 */
	public void insertBoardData(MultipartHttpServletRequest req,BoardReq boardReq, String content, List<MultipartFile> files) {
		// Editor Process
		try {
		UploadFileRes uploadFileRes = comnUtil.editorContent(req, content, "board");

		int company_seq = 0;
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication != null && authentication.getPrincipal() instanceof CustomUserDetails) {
            CustomUserDetails userDetails = (CustomUserDetails) authentication.getPrincipal();
            company_seq = userDetails.getUser().getCompanySeq();
        }

        boardReq.setCompany_seq(company_seq);
		boardReq.setContent(uploadFileRes.getContent());
		boardReq.setWrite_ip(req.getRemoteAddr());
		
		// files 의 0번째 index 는 thumb 이미지
		String thumbCheck = files.get(0).getOriginalFilename();
		if (thumbCheck == null || thumbCheck.trim().isEmpty()) {
			boardReq.setThumb("N");
			System.err.println("썸네일 이미지가 없습니다.");
		} else {
			boardReq.setThumb("Y");
			System.err.println("썸네일 이미지가 존재합니다.");
		}
		
		
		for(int i = 1; i < files.size(); i++) {
			String fileOrgNm = files.get(i).getOriginalFilename();
			if (fileOrgNm == null || fileOrgNm.trim().isEmpty()) {
		        boardReq.setIs_file("N");
		    } else {
		        boardReq.setIs_file("Y");
		        System.err.println("파일이 존재합니다.");
		        break; 
		    }
		}
		
		System.err.println("DB 인설트 전 REQ 확인 : "+boardReq);
		// Board Detail DB 저장
        siteMapper.insertBoardData(boardReq);
        
		// Board 데이터 저장
			int boardSeq = siteMapper.selectBoardSeq(boardReq);
			uploadFileRes.setBoard_seq(boardSeq); 
		
			/* Data Set */
			UploadFileReq uploadFileReq = comnUtil.settingReq(uploadFileRes);
			uploadFileReq.setWrite_ip(req.getRemoteAddr());

			// save FileData 
			//editor file 저장
			if(uploadFileReq.getFile_name() != null) {
				comnUtil.insertFileUpload(uploadFileReq);
			}
			
			
			// 파일 저장 로직
			if (thumbCheck == null || thumbCheck.trim().isEmpty()) {
				System.err.println("썸네일 이미지가 없습니다.");
			} else {
				System.err.println("썸네일 이미지가 존재합니다.");
				MultipartFile file = files.get(0);
				uploadFileReq = comnUtil.uploadThumbImage(file, "board", boardSeq);
		    	uploadFileReq.setWrite_ip(req.getRemoteAddr());
		    	
		    	comnUtil.insertFileUpload(uploadFileReq);
			}
			
			for(int i = 1; i < files.size(); i++) {
				String fileOrgNm = files.get(i).getOriginalFilename();
				MultipartFile file = files.get(i);
				if (fileOrgNm == null || fileOrgNm.trim().isEmpty()) {
			    	System.err.println("업로드 가능한 파일이 없습니다.");
			    } else {
			    	uploadFileReq = comnUtil.uploadFile(file, "board", boardSeq);
			    	uploadFileReq.setWrite_ip(req.getRemoteAddr());
			    	
			    	comnUtil.insertFileUpload(uploadFileReq);
			    }
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public SiteMenuRes getSelectedMenu(int menu_seq) {
		return menuMapper.getSiteMenuByMenuId(menu_seq);
	}
	
	
	public int returnMenuSeq(int config_seq) {
		return menuMapper.getMenuSeq(config_seq);
	}
	
	public int returnCofnigSeq(int menu_seq) {
		return menuMapper.getConfigSeq(menu_seq);
	}
	
	public int returnConfigSeqFromBoard(int board_seq) {
		return menuMapper.getConfigSeqFromBoard(board_seq);
	}
	
	// config detail 전달
	public BoardConfigRes getConfigDetail(int menu_seq) {
		return boardConfigService.getConfigDetail(returnCofnigSeq(menu_seq));	
	}
	
	
	public List<BoardCategoryRes> getAllCateList(int menu_seq) {
		List<BoardCategoryRes> list = boardCategoryService.getAllCateList(returnCofnigSeq(menu_seq));
		return list;
	}

	public void updateBoardData(MultipartHttpServletRequest req, BoardReq boardReq, String content, List<MultipartFile> files) {
		
		// Editor Process
		try {
		UploadFileRes uploadFileRes = comnUtil.editorContent(req, content, "board");

		int company_seq = 0;
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication != null && authentication.getPrincipal() instanceof CustomUserDetails) {
            CustomUserDetails userDetails = (CustomUserDetails) authentication.getPrincipal();
            company_seq = userDetails.getUser().getCompanySeq();
        }

        boardReq.setCompany_seq(company_seq);
		boardReq.setContent(uploadFileRes.getContent());
		boardReq.setWrite_ip(req.getRemoteAddr());
		
		if(files != null) {
			boardReq.setIs_file("Y");
		}else {
			boardReq.setIs_file("N");
		}
		
		
		// Board 데이터 저장
			int boardSeq = siteMapper.selectBoardSeq(boardReq);
			
			/* Data Set */
			uploadFileRes.setBoard_seq(boardSeq); 
			UploadFileReq uploadFileReq = comnUtil.settingReq(uploadFileRes);
			uploadFileReq.setWrite_ip(req.getRemoteAddr());

			// save FileData 
			//editor file 저장
			if(uploadFileReq.getFile_name() != null) {
				comnUtil.insertFileUpload(uploadFileReq);
			}
			
			
		// File Process
			if(files != null) {
				for(MultipartFile file : files) {
					
					uploadFileReq = comnUtil.uploadFile(file, "board", boardSeq);
					uploadFileReq.setWrite_ip(req.getRemoteAddr());
					
					comnUtil.insertFileUpload(uploadFileReq);
				}
			}
			
			siteMapper.updateBoardData(boardReq);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
