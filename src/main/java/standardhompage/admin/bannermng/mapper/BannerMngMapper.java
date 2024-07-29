package standardhompage.admin.bannermng.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import standardhompage.dto.banner.BannerMngReq;
import standardhompage.dto.banner.BannerMngRes;
import standardhompage.dto.popup.PopupRes;

@Mapper
public interface BannerMngMapper {
	
	void insertBannerMngData(BannerMngReq bannerMngReq);
	
	void updateBannerMngData(BannerMngReq bannerMngReq);
	
	int deleteBannerData(@Param("banner_seq") int banner_seq);
	
	public List<BannerMngRes> getBannerList(
			   @Param("pageSize") int pageSize,
			   @Param("offset") int offset,
			   @Param("searchCate") String searchCate,
			   @Param("keyword") String keyword,
			   @Param("banner_seq") int banner_seq);
	
	public int getBannerListCnt(@Param("searchCate")String searchCate, @Param("keyword") String keyword);
	
}
