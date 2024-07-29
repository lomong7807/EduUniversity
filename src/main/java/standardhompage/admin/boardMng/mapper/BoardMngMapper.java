package standardhompage.admin.boardMng.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import standardhompage.dto.board.BoardRes;

@Mapper
public interface BoardMngMapper {

	List<BoardRes> getBoardList(@Param("pageSize") int pageSize,
			   @Param("offset") int offset,
			   @Param("cate") String cate,
			   @Param("keyword") String keyword,
			   @Param("config_seq") int config_seq);

	int getBoardListCnt(@Param("config_seq") Integer config_seq, @Param("cate") String cate,
			@Param("keyword") String keyword);

	void boardDelete(int board_seq);

	BoardRes getBoardDetail(int board_seq);

}
