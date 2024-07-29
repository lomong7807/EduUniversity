package standardhompage.dto.baseconfig;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
public class BaseConfigInputReq {
	
	private String site_title;
	
	private String company_name;
	
	private int company_seq;
	
	private String ceo_name;
	
	private String company_address;

	private String business_no;
	
	private String tel;
	
	private String email;
	
	private String copyright;
	
	private String main_banner_text;
	
	private MultipartFile logo_image;
	
	private MultipartFile favicon_image;
}
