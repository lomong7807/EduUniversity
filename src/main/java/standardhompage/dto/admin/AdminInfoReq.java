package standardhompage.dto.admin;

import java.time.LocalDateTime;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class AdminInfoReq {
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
	private LocalDateTime write_time;
	private String write_ip;
}
