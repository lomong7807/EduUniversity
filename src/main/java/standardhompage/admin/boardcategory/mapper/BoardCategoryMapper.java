package standardhompage.admin.boardcategory.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import standardhompage.dto.boardCategory.BoardCategoryReq;
import standardhompage.dto.boardCategory.BoardCategoryRes;
import standardhompage.dto.boardConfig.BoardConfigRes;

@Mapper
public interface BoardCategoryMapper {

	List<BoardCategoryRes> getCategoryList(@Param("pageSize") Integer pageSize, @Param("offset") int offset,
			@Param("searchCate") Integer searchCate);

	int getCategoryListCnt(Integer searchCate);

	List<BoardConfigRes> getAllBoardConfig();

	BoardCategoryRes getCateDetail(int cate_seq);

	int updateCategory(BoardCategoryReq req);

	int regBoardCate(BoardCategoryReq req);

	BoardConfigRes getConfigByConfigSeq(int cate_seq);

	List<BoardCategoryRes> getAllCateList(int config_seq);

	int deleteCategory(int seq);

	int deleteCategoryByConfigSeq(int seq);

}
