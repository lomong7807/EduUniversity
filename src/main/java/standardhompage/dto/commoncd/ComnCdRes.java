package standardhompage.dto.commoncd;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ComnCdRes {
	private int code_seq;
	private String upper_cd;
	private String common_cd;
	private String cd_value;
	private int sort_no;
}
