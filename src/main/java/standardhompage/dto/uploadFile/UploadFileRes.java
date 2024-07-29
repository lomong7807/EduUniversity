package standardhompage.dto.uploadFile;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@NoArgsConstructor
public class UploadFileRes {

	/* 파일 이름 UUID */
	String file_Name;

	/* 파일 확장자 */
	String file_ext;

	/* 파일 저장 경로 */
	String file_dir;

	/* 파일 크기 */
	String file_size;

	/* 파일 오리지널 이름 */
	String original_name;

	/* 보드_seq */
	int board_seq;

	/* 다운로드 횟수 */
	int down_num;

	/* 작성 시간 */
	String write_time;

	/* 작성 IP */
	String write_ip;
	
	/* Editor content */
	String content;
	
	/* File Type*/
	String file_type;
}
