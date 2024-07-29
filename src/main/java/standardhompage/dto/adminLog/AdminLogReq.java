package standardhompage.dto.adminLog;

import java.time.LocalDateTime;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class AdminLogReq {
	private int admin_log_seq;
	private String job_name;
	private String write_id;
	private String write_ip;
	private LocalDateTime write_time;
	private String job_url;
	private String form_value;
}
