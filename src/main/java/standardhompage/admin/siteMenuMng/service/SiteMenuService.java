package standardhompage.admin.siteMenuMng.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.extern.log4j.Log4j2;
import standardhompage.admin.boardConfig.mapper.BoardConfigMapper;
import standardhompage.admin.boardMng.mapper.BoardMngMapper;
import standardhompage.admin.boardcategory.mapper.BoardCategoryMapper;
import standardhompage.admin.siteMenuMng.mapper.SiteMenuMapper;
import standardhompage.dto.boardConfig.BoardConfigReq;
import standardhompage.dto.boardConfig.BoardConfigRes;
import standardhompage.dto.sitemenu.SiteMenuReq;
import standardhompage.dto.sitemenu.SiteMenuRes;
import standardhompage.security.CustomUserDetails;

@Service
@Log4j2
public class SiteMenuService {

	@Autowired
	SiteMenuMapper mapper;

	@Autowired
	BoardConfigMapper boardConfigMapper;

	@Autowired
	BoardCategoryMapper cateMapper;
	
	@Autowired
	BoardMngMapper boardMngMapper;
	
	public Map<String, Object> getSiteMenuList(Integer page, Integer pageSize, String searchCate, String keyword,
			int p_menu_seq) {
		Map<String, Object> result = new HashMap<>();
		try {
			int offset = (page - 1) * pageSize;
			System.out.println("p_menu_seq : " + p_menu_seq);
			List<SiteMenuRes> siteMenuList = mapper.getSiteMenuList(pageSize, offset, keyword, p_menu_seq);
			System.out.println("--");
			siteMenuList.forEach(e -> System.out.println(e));
			System.out.println("--");
			System.out.println(siteMenuList.toString());
			int totalRecords = mapper.getSiteMenuListCnt(searchCate, keyword, p_menu_seq);
			System.out.println(totalRecords);
			result.put("siteMenuList", siteMenuList);
			result.put("totalRecords", totalRecords);
			result.put("currentPage", page);
			result.put("pageSize", pageSize);
		} catch (Exception e) {
			log.error("Exception [Err_Location] : {}", e.getStackTrace()[0]);
			result.put("error", "An error occurred while fetching admin info list");
			result.put("errorMessage", e.getMessage());
			throw new RuntimeException(e);
		}

		return result;
	}

	public SiteMenuRes getSiteMenuByMenuId(int menu_seq) {
		return mapper.getSiteMenuByMenuId(menu_seq);
	}

	public List<SiteMenuRes> getParentMenus() {
		return mapper.getParentMenus();
	}

	@Transactional
	public int registerSiteMenu(SiteMenuReq sreq, BoardConfigReq breq) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		try {
			if (authentication != null && authentication.getPrincipal() instanceof CustomUserDetails) {
	            CustomUserDetails userDetails = (CustomUserDetails) authentication.getPrincipal();
	            sreq.setWrite_id(userDetails.getUsername());
	            breq.setWrite_id(userDetails.getUsername());
	        }else {
	        	sreq.setWrite_id("localhost");
	        	breq.setWrite_id("localhost");
	        }
			
			mapper.registerSiteMenu(sreq);
			if(sreq.getMenu_type().equals("board")) {
				breq.setMenu_seq(mapper.getLastInsertedMenuSeq());
				boardConfigMapper.registerBoardConfig(breq);
			}
		} catch (Exception e) {
			log.error(e);
			return 0;
		}
		return 1;
	}

	public int updateSiteMenu(SiteMenuReq req) {
		return mapper.updateSiteMenu(req);
	}

	@Transactional
	public int deleteSiteMenu(String menu_seqs) {
		String[] arr = menu_seqs.split(",");
		for (int i = 0; i < arr.length; i++) {
			try {
				SiteMenuRes menu = mapper.getSiteMenuByMenuId(Integer.parseInt(arr[i]));
				mapper.deleteSiteMenu(menu.getMenu_seq());
				if (menu.getMenu_type().equals("board")) {
					BoardConfigRes res = boardConfigMapper.getBoardConfigByMenuSeq(Integer.parseInt(arr[i]));
					boardConfigMapper.delBoardConfig(res.getConfig_seq());
					cateMapper.deleteCategoryByConfigSeq(res.getConfig_seq());
					//boardMngMapper.deleteBoardByBoardConfig(res.getConfig_seq());
				}
			} catch (Exception e) {
				log.error(e);
				return 0;
			}
		}
		return 0;
	}

}
