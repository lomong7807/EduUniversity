package standardhompage.dto.sitemenu;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import standardhompage.dto.boardConfig.BoardConfigRes;

@Getter
@Setter
@ToString
public class SiteMenuRes {
	private int menu_seq;
	private int p_menu_seq;
	private int company_seq;
	private String menu_type;
	private int childMenuCnt;
	private String title;
	private String dir;
	private String file_name;
	private int depth;
	private String url;
	private int auth_level;
	private String write_id;
	private String write_ip;
	private Date write_time;
	private int order_num;
	private String icon_class;
	private String target;
	private char new_window;
	private char is_open;
	private String banner_image;
	private String banner_image_text;
}
