package standardhompage.admin.adminMng.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import standardhompage.dto.admin.AdminInfoReq;
import standardhompage.dto.admin.AdminInfoRes;

@Mapper
public interface AdminMngMapper {

	public AdminInfoRes selectAdminBySeq(@Param("admin_seq") int admin_seq);
	public List<AdminInfoRes> getAdminList(@Param("pageSize") int pageSize,
										   @Param("offset") int offset,
										   @Param("searchCate") String searchCate,
										   @Param("keyword") String keyword);
	public int getAdminListCount(@Param("searchCate") String searchCate, @Param("keyword") String keyword);
	public int insertAdmin(AdminInfoReq req);
	public int updateAdmin(AdminInfoReq req);
	public int deleteAdminBySeq(@Param("admin_seq") int admin_seq);
	public int getAdminCountById(@Param("id") String id);
	public int getAdminCountByHp(@Param("id") String id, @Param("hp") String hp);

}
