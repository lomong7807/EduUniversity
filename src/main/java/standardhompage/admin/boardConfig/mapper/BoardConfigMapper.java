package standardhompage.admin.boardConfig.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import standardhompage.dto.boardConfig.BoardConfigReq;
import standardhompage.dto.boardConfig.BoardConfigRes;
import standardhompage.dto.boardConfig.BoardTypeRes;

@Mapper
public interface BoardConfigMapper {

	List<BoardConfigRes> getAllBoardConfig();

	void registerBoardConfig(BoardConfigReq req);

	int getBoardConfigCnt();

	List<BoardConfigRes> getBoardConfigList();

	List<BoardTypeRes> getAllBoardTypes();

	List<BoardConfigRes> getAllBoardConfigList(@Param("pageSize") Integer pageSize, @Param("offset") int offset);

	BoardConfigRes getConfigDetail(@Param("config_seq") int config_seq);

	int configUpdate(BoardConfigReq req);

	List<BoardConfigRes> getAllBoardConfigForSidebar();

	BoardConfigRes getBoardConfigByMenuSeq(int menu_seq);
	
	void delBoardConfig(int config_seq);

	String getBoardExByBoardTypeSeq(int board_type_seq);
	
}
