package standardhompage.dto.popup;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class PopupRes {
	
	/* 팝업 seq */
	private int popup_seq;
	
	/* 팝업 제목 */
	private String title;
	
	/* 팝업 컨텐츠 내용 */
	private String content;
	
	/* 시작 일자  */
	private String sday;
	
	/* 종료 일자  */
	private String eday;
	
	/* x 좌표 */
	private String x_pos;
	
	/* y 좌표 */
	private String y_pos;
	
	/* 넓이 */
	private String width;
	
	/* 높이 */ 
	private String height;
	
	/* 활성화 유무 */
	private String is_open;
	
	/* 기업 아이디  */ 
	private int company_seq;
	
	/* 링크 url */
	private String link_url;
}
