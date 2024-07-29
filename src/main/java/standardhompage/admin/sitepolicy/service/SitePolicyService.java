package standardhompage.admin.sitepolicy.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import jakarta.servlet.http.HttpSession;
import lombok.extern.log4j.Log4j2;
import standardhompage.admin.sitepolicy.mapper.SitePolicyMapper;
import standardhompage.dto.policy.PolicyReq;
import standardhompage.dto.policy.PolicyRes;
import standardhompage.security.CustomUserDetails;

@Log4j2
@Service
public class SitePolicyService {

	@Autowired
	private SitePolicyMapper policyMapper;
	
	// 데이터 등록
	public void insertSitePolicy(String editorContent1, String editorContent2) {
		
		
		
        String companyId = "";
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication != null && authentication.getPrincipal() instanceof CustomUserDetails) {
            CustomUserDetails userDetails = (CustomUserDetails) authentication.getPrincipal();
            companyId = userDetails.getUser().getCompanyId();
        }
		
		PolicyReq policyReq = new PolicyReq();
		
		policyReq.setCompany_id(companyId);
		policyReq.setPolicy(editorContent1);
		policyReq.setService(editorContent2);
		
		if(existData(companyId) > 0) {
			policyMapper.updateSitePolicy(policyReq);
		} else {
			policyMapper.insertSitePolicy(policyReq);
		}
	}
	
	// 데이터 조회 
	public PolicyRes policyData() {
		String companyId = "";
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication != null && authentication.getPrincipal() instanceof CustomUserDetails) {
            CustomUserDetails userDetails = (CustomUserDetails) authentication.getPrincipal();
            companyId = userDetails.getUser().getCompanyId();
        }
		PolicyRes response = policyMapper.policyData(companyId);
		return response;
	}
	
	
	public int existData(String companyId) {
		return policyMapper.existData(companyId); 
	}
}
