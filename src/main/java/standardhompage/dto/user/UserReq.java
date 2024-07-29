package standardhompage.dto.user;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.time.LocalDateTime;
import java.util.Date;

@Getter
@Setter
@ToString
public class UserReq {

    private int user_seq;
    private int company_seq;
    private int role_seq;
    private String user_id;
    private String user_pw;
    private String user_hp;
    private String user_name;
    private String sex;
    private String zip_code;
    private String addr1;
    private String addr2;
    private String email;
    private String birth;
    private LocalDateTime write_time;
    private LocalDateTime update_time;
    private String register_ip;
    private String email_ok;
    private String sms_ok;
    private String is_out;
}
