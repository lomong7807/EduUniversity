package standardhompage.admin.adminLog.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import standardhompage.dto.adminLog.AdminLogReq;
import standardhompage.dto.adminLog.AdminLogRes;

@Mapper
public interface AdminLogMapper {

	public List<AdminLogRes> getLogs();

	public void insertAdminLog(AdminLogReq log);

}
