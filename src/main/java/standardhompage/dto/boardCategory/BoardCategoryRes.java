package standardhompage.dto.boardCategory;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class BoardCategoryRes {
	private int category_seq;
	private String title;
	private String write_id;
	private Date write_time;
	private String write_ip;
	private char is_open;
	private int config_seq;
	private String config_title;
}
