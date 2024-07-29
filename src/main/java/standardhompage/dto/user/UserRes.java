package standardhompage.dto.user;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.time.LocalDateTime;
import java.util.Date;

@Getter
@Setter
@ToString
public class UserRes {

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
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd HH:mm:ss")
    private LocalDateTime write_time;
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd HH:mm:ss")
    private LocalDateTime update_time;
    private String register_ip;
    private String email_ok;
    private String sms_ok;
    private String is_out;

    // addition
    private String company_id;
    private String company_name;

    // Custom getter for user_hp to remove dashes
    public String getUser_hpNum() {
        return this.user_hp != null ? this.user_hp.replaceAll("-", "") : null;
    }

    public String getFormattedHp() {
        return formatPhoneNumber(user_hp);
    }

    private String formatPhoneNumber(String phoneNumber) {
        if (phoneNumber == null || phoneNumber.length() != 11) {
            return phoneNumber;
        }
        return phoneNumber.replaceFirst("(\\d{3})(\\d{4})(\\d+)", "$1-$2-$3");
    }
}
