package standardhompage.dto.adminMenu;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class AdminMenuRes {
	private int menu_seq;
	private int p_menu_seq;
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
	private int company_seq;
	private String target;
	private int childMenuCnt;
	private char visible;
	private char new_window;
}
