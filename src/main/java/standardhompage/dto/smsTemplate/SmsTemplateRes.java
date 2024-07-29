package standardhompage.dto.smsTemplate;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.time.LocalDateTime;

@Getter
@Setter
@ToString
public class SmsTemplateRes {

    private int sms_template_seq;
    private String template_type;
    private String title;
    private String content;
    private String web_link;
    private String image_link;
    private String os;
    private LocalDateTime write_time;
    private String template_code;
    private int company_seq;
}
