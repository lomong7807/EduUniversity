package standardhompage.admin.boardConfig.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.log4j.Log4j2;
import standardhompage.admin.boardConfig.mapper.BoardConfigMapper;
import standardhompage.admin.boardcategory.mapper.BoardCategoryMapper;
import standardhompage.admin.siteMenuMng.mapper.SiteMenuMapper;
import standardhompage.dto.boardConfig.BoardConfigReq;
import standardhompage.dto.boardConfig.BoardConfigRes;
import standardhompage.dto.boardConfig.BoardTypeRes;

@Service
@Log4j2
public class BoardConfigService {

	@Autowired
	BoardConfigMapper mapper;

	@Autowired
	BoardCategoryMapper cateMapper;
	
	@Autowired
	SiteMenuMapper siteMenuMapper;

	public List<BoardConfigRes> getAllBoardConfig() {
		return mapper.getAllBoardConfig();
	}

	public void registerBoardConfig(BoardConfigReq req) {
		mapper.registerBoardConfig(req);
	}

	public List<BoardTypeRes> getBoardType() {
		return mapper.getAllBoardTypes();
	}

	public Map<String, Object> getAllBoardConfigList(Integer page, Integer pageSize) {
		Map<String, Object> result = new HashMap<>();

		try {
			int offset = (page - 1) * pageSize;
			List<BoardConfigRes> configList = mapper.getAllBoardConfigList(pageSize, offset);
			int totalRecords = mapper.getBoardConfigCnt();

			result.put("list", configList);
			result.put("totalRecords", totalRecords);
			result.put("currentPage", page);
			result.put("pageSize", pageSize);

		} catch (Exception e) {
			log.error("Exception [AdminMngService.getAdminListService] : {}", e.getStackTrace()[0]);
			result.put("error", "An error occurred while fetching admin info list");
			result.put("errorMessage", e.getMessage());
			throw new RuntimeException(e);
		}
		return result;
	}

	public BoardConfigRes getConfigDetail(int config_seq) {
		return mapper.getConfigDetail(config_seq);
	}

	public int configUpdate(BoardConfigReq req) {
		siteMenuMapper.updateMenuName(req);
		return mapper.configUpdate(req);
	}

	public Map<String, Object> getAllBoardConfigForSidebar() {
		Map<String, Object> map = new HashMap<>();
		map.put("type", "board");
		map.put("boardList", mapper.getAllBoardConfigForSidebar());
		return map;
	}

	public BoardConfigRes getBoardConfigByMenuSeq(int menu_seq) {
		return mapper.getBoardConfigByMenuSeq(menu_seq);
	}

	public void configDelete(String delConfigs) {
		String[] arr = delConfigs.split(",");
		for (int i = 0; i < arr.length; i++) {
			try {
				mapper.delBoardConfig(Integer.parseInt(arr[i]));
				cateMapper.deleteCategoryByConfigSeq(Integer.parseInt(arr[i]));
			} catch (Exception e) {
				log.error(e);
			}
		}
	}

	public String getBoardExByBoardTypeSeq(int board_type_seq) {
		return mapper.getBoardExByBoardTypeSeq(board_type_seq);
	}

}
