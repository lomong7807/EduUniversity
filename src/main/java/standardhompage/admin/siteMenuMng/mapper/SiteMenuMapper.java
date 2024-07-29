package standardhompage.admin.siteMenuMng.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import standardhompage.dto.boardConfig.BoardConfigReq;
import standardhompage.dto.sitemenu.SiteMenuReq;
import standardhompage.dto.sitemenu.SiteMenuRes;

@Mapper
public interface SiteMenuMapper {

	List<SiteMenuRes> getSiteMenuList(@Param("pageSize") int pageSize, @Param("offset") int offset,
			@Param("keyword") String keyword, @Param("p_menu_seq") int p_menu_seq);

	int getSiteMenuListCnt(String searchCate, @Param("keyword") String keyword, @Param("p_menu_seq") int p_menu_seq);

	SiteMenuRes getSiteMenuByMenuId(int menu_seq);

	List<SiteMenuRes> getParentMenus();

	List<SiteMenuRes> getChildMenus();

	int registerSiteMenu(SiteMenuReq req);

	int updateSiteMenu(SiteMenuReq req);

	int deleteSiteMenu(int menu_seq);

	SiteMenuRes getParentMenu(int seq);

	List<SiteMenuRes> getMenusByPSeq(int seq);

	int getConfigSeq(int seq);

	int getMenuSeq(int seq);

	int getConfigSeqFromBoard(int seq);

	void updateMenuName(BoardConfigReq req);

	int getLastInsertedMenuSeq();

}
