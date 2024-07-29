package standardhompage.dto.baseconfig;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
public class BaseConfigRes {
	
	private String site_title;
	
	private String company_name;
	
	private int company_seq;
	
	private String ceo_name;
	
	private String company_address;

	private String business_no;
	
	private String tel;
	
	private String email;
	
	private String copyright;
	
	private String logo_image_org_nm;
	
	private String favicon_org_nm;
	
	private String main_banner_text;
	
}
