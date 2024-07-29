package standardhompage.admin.login.mapper;

import org.apache.ibatis.annotations.Mapper;

import standardhompage.dto.admin.AdminInfoReq;
import standardhompage.dto.admin.AdminInfoRes;
import standardhompage.dto.customUser.CustomUserReq;

@Mapper
public interface AdminLoginMapper {

	public AdminInfoRes getAdminByReq(AdminInfoReq req);
	public AdminInfoRes getAdminById(String id);

}
