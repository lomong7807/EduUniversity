package standardhompage.admin.boardMng.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.log4j.Log4j2;
import standardhompage.admin.boardMng.mapper.BoardMngMapper;
import standardhompage.dto.board.BoardRes;

@Service
@Log4j2
public class BoardMngService {

	@Autowired
	BoardMngMapper mapper;

	public int boardDelete(String delBoards) {
		String[] arr = delBoards.split(",");
		for (int i = 0; i < arr.length; i++) {
			try {
				mapper.boardDelete(Integer.parseInt(arr[i]));
			} catch (Exception e) {
				log.error(e);
				return 0;
			}
		}
		return 1;
	}

	public BoardRes getBoardDetail(int board_seq) {
		return mapper.getBoardDetail(board_seq);
	}

	public Map<String, Object> getBoardList(int page, int pageSize, String searchCate, String keyword, int config_seq) {
		Map<String, Object> result = new HashMap<>();
		try {
			int offset = (page - 1) * pageSize;
			List<BoardRes> list = mapper.getBoardList(pageSize, offset, searchCate, keyword, config_seq);
			int totalRecords = mapper.getBoardListCnt(config_seq, searchCate, keyword);

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

}
