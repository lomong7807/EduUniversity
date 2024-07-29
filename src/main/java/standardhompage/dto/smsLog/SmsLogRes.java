package standardhompage.dto.smsLog;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@Getter
@Setter
@ToString
public class SmsLogRes {

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

    public String getSuccessStatus(){
        return this.result.equals("SUCCESS") ? "성공" : "실패";
    }

    public String getSendType(){
        return this.send_type.equals("group") ? "단체" : "개인";
    }

    public String getFormattedSendNo() {
        return formatPhoneNumber(send_no);
    }

    public String getFormattedReceiveNo() {
        return formatPhoneNumber(receive_no);
    }

    public String getFormattedWriteTime() {
        return write_time != null ? write_time.format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss")) : "";
    }

    public String getFormattedReserveTime() {
        return reserve_time != null ? reserve_time.format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss")) : "-";
    }

    private String formatPhoneNumber(String phoneNumber) {
        if (phoneNumber == null || phoneNumber.length() != 11) {
            return phoneNumber;
        }
        return phoneNumber.replaceFirst("(\\d{3})(\\d{4})(\\d+)", "$1-$2-$3");
    }
}
