package standardhompage.admin.boardcategory.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.log4j.Log4j2;
import standardhompage.admin.boardcategory.mapper.BoardCategoryMapper;
import standardhompage.dto.boardCategory.BoardCategoryReq;
import standardhompage.dto.boardCategory.BoardCategoryRes;
import standardhompage.dto.boardConfig.BoardConfigRes;
import standardhompage.dto.sitemenu.SiteMenuRes;

@Service
@Log4j2
public class BoardCategoryService {

	@Autowired
	BoardCategoryMapper mapper;

	public Map<String, Object> getBoardCateList(Integer page, Integer pageSize, Integer searchCate) {
		Map<String, Object> result = new HashMap<>();
		try {
			int offset = (page - 1) * pageSize;
			List<BoardCategoryRes> list = mapper.getCategoryList(pageSize, offset, searchCate);
			System.out.println(list.toString());
			int totalRecords = mapper.getCategoryListCnt(searchCate);
			System.out.println(totalRecords);
			result.put("list", list);
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

	/**
	 * 카테고리 리스트 조회
	 * 
	 * @param configSeq
	 * @return cateList
	 */
	public List<BoardCategoryRes> getAllCateList(int configSeq) {
		return mapper.getAllCateList(configSeq);
	}

	public List<BoardConfigRes> getAllBoardConfig() {
		return mapper.getAllBoardConfig();
	}

	public BoardCategoryRes getCateDetail(int cate_seq) {
		return mapper.getCateDetail(cate_seq);
	}

	public int updateCategory(BoardCategoryReq req) {
		return mapper.updateCategory(req);
	}

	public int regBoardCate(BoardCategoryReq req) {
		return mapper.regBoardCate(req);
	}

	public BoardConfigRes getConfigByConfigSeq(int cate_seq) {
		return mapper.getConfigByConfigSeq(cate_seq);
	}

	public int deleteCategory(int seq) {
		return mapper.deleteCategory(seq);
	}

	public int cateDelete(String delCates) {
		String[] arr = delCates.split(",");
		for (int i = 0; i < arr.length; i++) {
			try {
				mapper.deleteCategory(Integer.parseInt(arr[i]));
			} catch (Exception e) {
				log.error(e);
				return 0;
			}
		}
		return 1;
	}

}
