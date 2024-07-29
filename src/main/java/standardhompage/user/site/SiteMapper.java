package standardhompage.user.site;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import standardhompage.dto.board.BoardReq;
import standardhompage.dto.board.BoardRes;

@Mapper
public interface SiteMapper {

	int selectBoardTypeSeq(@Param("config_seq") int config_seq);

	String selectBoardType(@Param("board_type_seq") int board_type_seq);

	String returnMenu(int menu_seq);
	
	void insertBoardData(BoardReq boardReq);
	
	int selectBoardSeq(BoardReq boardReq); 
	
	void updateBoardData(BoardReq boardReq);
	
	List<BoardRes> getBoardList(
			@Param("pageSize") int pageSize,
			   @Param("offset") int offset,
			   @Param("searchCate") String searchCate,
			   @Param("keyword") String keyword,
			   @Param("config_seq") int config_seq,
			   @Param("category_seq") int category_seq);
	
	int getBoardListCnt(@Param("searchCate")String searchCate, 
			@Param("keyword") String keyword, 
			@Param("config_seq") int config_seq,
			@Param("category_seq") int category_seq);

}
