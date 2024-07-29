package standardhompage.dto.banner;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class BannerMngInputReq {
	
	/* seq */ 
	private String banner_seq;
	
	/* 배너 이미지 경로 */
	private MultipartFile banner_image_url;
	
	/* 배너 메인 텍스트 */
	private String banner_text;
	
	/* 배너 작은 텍스트 */
	private String banner_small_text;
	
	/* 배너 링크 버튼 텍스트 */
	private String banner_link_text;
	
	/* 배너 링크 URL */
	private String banner_link_url;
	
	/* 작성자 ID */
	private String write_id;
	
	/* 작성 일시 */
	private String write_time;
	
}
