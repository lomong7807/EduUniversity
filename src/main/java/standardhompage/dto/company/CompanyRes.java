package standardhompage.dto.company;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.time.LocalDateTime;

@Getter
@Setter
@ToString
public class CompanyRes {

    private int company_seq;
    private String company_id;
    private String company_pw;
    private String company_name;
    private String company_code;
    private String sub_domain;
    private String logo_image;
    private String copyright;
    private String charge_name;
    private String charge_email;
    private String company_tel;
    private String charge_hp;
    private String company_fax;
    private String special_note;
    private String theme;
    private String skin;
    private LocalDateTime register_date;
}
