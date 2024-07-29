package standardhompage.dto.smsConfig;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.time.LocalDateTime;

@Getter
@Setter
@ToString
public class SmsConfigReq {

    private String sms_config_seq;
    private String sms_key;
    private String api_secret;
    private String sms_id;
    private String send_number;
    private String use_sms;
    private String pre_class_sms;
    private String tit01;
    private String tit02;
    private String tit03;
    private String tit04;
    private String tit05;
    private String tit06;
    private String tit07;
    private String tit08;
    private String tit09;
    private String tit10;
    private String tit11;
    private String msg01;
    private String msg02;
    private String msg03;
    private String msg04;
    private String msg05;
    private String msg06;
    private String msg07;
    private String msg08;
    private String msg09;
    private String msg10;
    private String msg11;
    private String msg12;
    private String company_seq;
    private LocalDateTime write_time;
}
