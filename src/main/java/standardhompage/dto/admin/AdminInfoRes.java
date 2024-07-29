package standardhompage.dto.admin;

import java.time.LocalDateTime;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class AdminInfoRes {
	private int admin_seq;
	private int company_seq;
	private int role_seq;
	private String id;
	private String pw;
	private String name;
	private String hp;
	private String tel;
	private String zip;
	private String addr1;
	private String addr2;
	private String email;
	private char sex;
	private String birth;
	private LocalDateTime last_login;
	private char is_out;
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd HH:mm:ss")
	private LocalDateTime write_time;
	private String write_ip;

	// addition
	private String company_id;
	private String company_name;

//	@JsonProperty("RoleName")
	public String getRoleName() {
		return switch (this.role_seq) {
			case 1 -> "일반 유저";
			case 2 -> "일반 관리자";
			case 3 -> "시스템 관리자";
			case 4 -> "기관 관리자";
			default -> "알 수 없음";
		};
	}

	public String getRoleStr() {
		return switch (this.role_seq) {
			case 2 -> "GEN";
			case 3 -> "SYS";
			case 4 -> "INST";
			default -> "알 수 없음";
		};
	}


	public String getHpNum() {
		return this.hp != null ? this.hp.replaceAll("-", "") : null;
	}
}
