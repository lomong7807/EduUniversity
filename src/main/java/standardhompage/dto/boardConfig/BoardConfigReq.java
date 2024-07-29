package standardhompage.dto.boardConfig;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class BoardConfigReq {
	private int config_seq;
	private int board_type_seq;
	private String board_name;
	private int view_level;
	private int menu_seq;
	private int write_level;
	private String write_id;
	private String skin_dir;
	private String header_include;
	private String footer_include;
	private char is_file_use;
	private char is_comment_use;
	private char is_editor_use;
	private char is_reply_use;
	private int title_length;
	private int max_file_size;
	private int max_file_num;
	private String write_ip;
	private int list_num;
	private Date write_time;
}
