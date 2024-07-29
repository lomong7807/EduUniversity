package standardhompage.admin.login.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import standardhompage.dto.admin.AdminInfoReq;
import standardhompage.dto.admin.AdminInfoRes;
import standardhompage.admin.login.mapper.AdminLoginMapper;

@Service
public class AdminLoginServcie {

	@Autowired
	AdminLoginMapper adminLoginMapper;

	public boolean loginChk(AdminInfoReq req) {
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		AdminInfoRes res = adminLoginMapper.getAdminByReq(req);
		// 암호화x
		if (res != null && req.getPw().equals(res.getPw())) {
			return true;
		} else {
			return false;
		}
		/*
		 * 암호화했을경우 if (res != null && encoder.matches(req.getPw(), res.getPw())) {
		 * return true; } else { return false; }
		 */
	}

	public AdminInfoRes getAdminById(AdminInfoReq req) {
		return adminLoginMapper.getAdminByReq(req);
	}
}
