package standardhompage.admin.commoncd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import standardhompage.dto.commoncd.ComnCdReq;
import standardhompage.dto.commoncd.ComnCdRes;

@Mapper
public interface ComnCdMapper {

	List<ComnCdRes> getComnCds();

	ComnCdRes getComnCdByCdSeq(int cdSeq);

	int registerCmnCd(ComnCdReq req);

	int updateCmnCd(ComnCdReq req);

	List<ComnCdRes> getComnCdList(@Param("pageSize") Integer pageSize, @Param("offset") int offset,
			@Param("searchCate") String searchCate, @Param("keyword") String keyword);

	int getComnCdListCnt(@Param("searchCate") String searchCate, @Param("keyword") String keyword);

}
