package standardhompage.admin.adminLog.service;

import java.util.List;

import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import standardhompage.admin.adminLog.mapper.AdminLogMapper;
import standardhompage.dto.adminLog.AdminLogReq;
import standardhompage.dto.adminLog.AdminLogRes;

@Log4j2
@Service
public class AdminLogService {

	@Autowired
	AdminLogMapper adminLogMapper;

	public List<AdminLogRes> getLogs() {
		return adminLogMapper.getLogs();
	}

	public void log(AdminLogReq req) {
		System.out.println("service==================");
		System.out.println(req.toString());
		System.out.println("service====================");
	}

	public void insertAdminLog(AdminLogReq req){

		try{
			adminLogMapper.insertAdminLog(req);
		}catch (Exception e){
			log.error("Exception [adminLogService.insertAdminLog] : {}", e.getStackTrace()[0]);
			throw new RuntimeException(e);
		}
	}

}