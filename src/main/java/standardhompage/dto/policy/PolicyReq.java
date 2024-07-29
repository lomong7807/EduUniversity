package standardhompage.dto.policy;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class PolicyReq {
	
	/* 개인정보처리 */
	String policy;
	
	/* 서비스 이용약관 */ 
	String service;
	
	/* 기업 아이디 */
	String company_id;
}
