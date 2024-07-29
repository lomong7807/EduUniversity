package standardhompage.dto.board;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class BoardRes {
	/* 게시글 seq */
	private int board_seq;
	/* 게시판 설정 seq */
	private int config_seq;
	/* 게시글 id */
	private String board_id;
	/* 게시판 이름 */
	private String board_name;
	/* 카테고리 seq */
	private int category_seq;
	/* 게시글 제목 */
	private String title;
	/* 게시글 내용 */
	private String content;
	/* 조회수 */
	private int view_cnt;
	/* 공지사항 유무 */ 
	private String is_notice;
	/* 작성자 id */
	private String write_id;
	/* 작성자 ip */
	private String write_ip;
	
	private String thumb;
	/* 소개글 */
	private String intro;
	/* 작성 일자 */
	private Date write_time;
	/* 링크 url */
	private String link_url;
	/* 메인 표시 유무 */
	private String is_main_open;
	/* 조회 권한 */
	private String view_level;
	/* 정렬 순서 */
	private int sort_no;
	/* 학년 ?*/
	private String grade;
	/* 회사 id */
	private int company_seq;
	/* 관리자 확인 여부 */
	private String admin_check_yn;
	/* 삭제 여부 */ 
	private char is_deleted;
	/* 파일 등록 여부*/
	private String is_file;
}
