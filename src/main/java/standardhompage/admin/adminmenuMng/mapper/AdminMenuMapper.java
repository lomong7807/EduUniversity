package standardhompage.admin.adminmenuMng.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import standardhompage.dto.adminMenu.AdminMenuReq;
import standardhompage.dto.adminMenu.AdminMenuRes;
import standardhompage.dto.sitemenu.SiteMenuReq;
import standardhompage.dto.sitemenu.SiteMenuRes;

@Mapper
public interface AdminMenuMapper {

	List<AdminMenuRes> getAllAdminMenus();

	AdminMenuRes getAdminMenuByMenuId(int menu_seq);

	void registerAdminMenu(AdminMenuReq req);

	int updateAdminMenu(AdminMenuReq req);

	int deleteAdminMenu(int menu_seq);

	List<AdminMenuRes> getAdminMenuList(@Param("pageSize") int pageSize, @Param("offset") int offset,
			@Param("keyword") String keyword, @Param("p_menu_seq") int p_menu_seq);

	int getAdminMenuListCnt(String searchCate, @Param("keyword") String keyword, @Param("p_menu_seq") int p_menu_seq);

	List<AdminMenuRes> getParentMenus();
}
