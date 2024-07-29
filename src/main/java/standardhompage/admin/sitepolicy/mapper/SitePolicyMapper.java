package standardhompage.admin.sitepolicy.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import standardhompage.dto.policy.PolicyReq;
import standardhompage.dto.policy.PolicyRes;

@Mapper
public interface SitePolicyMapper {

	public int existData(@Param("companyId") String companyId);
	
	public void insertSitePolicy(PolicyReq policyReq);

	public void updateSitePolicy(PolicyReq policyReq);
	
	public PolicyRes policyData(@Param("companyId") String companyId);


}
