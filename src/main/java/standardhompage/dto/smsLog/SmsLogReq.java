package standardhompage.dto.smsLog;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.time.LocalDateTime;

@Getter
@Setter
@ToString
public class SmsLogReq {

    private int sms_log_seq;
    private int company_seq;
    private String send_type;
    private String result;
    private String send_no;
    private String user_id;
    private String receive_no;
    private String title;
    private String memo;
    private String sms_id;
    private String sms_key;
    private String web_link;
    private String image_link;
    private String android_id;
    private String ios_id;
    private String token;
    private String error_code;
    private String template_id;
    private String pf_id;
    private LocalDateTime reserve_time;
    private LocalDateTime write_time;
}
