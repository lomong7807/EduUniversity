package standardhompage.dto.boardConfig;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class BoardTypeRes {
	private int board_type_seq;
	private String title;
	private String fileNamel;
	private int order_num;
}
