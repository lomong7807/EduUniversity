package standardhompage.dto.userLog;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.time.LocalDateTime;

@Getter
@Setter
@ToString
public class UserLogRes {
    private int user_log_seq;
    private String job_name;
    private String job_url;
    private String form_value;
    private String write_id;
    private String session_id;
    private String user_agent;
    private String write_ip;
    private LocalDateTime write_time;
}
