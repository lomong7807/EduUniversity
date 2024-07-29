package standardhompage.admin;

import java.io.FileInputStream;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/")
public class AdminController {

	@GetMapping(value = "")
	public String firstConn() {
		return "/user/other/index";
	}

	@GetMapping(value = "index")
	public String index() {
		return "index";
	}

	@GetMapping("/test")
	public void abc() {
		try {
			// 파일 경로 지정
			String filePath = "C:/Users/USER/a.png";

			// FileInputStream 객체 생성
			FileInputStream fis = new FileInputStream(filePath);

			// 읽을 바이트 수 지정
			int byteSize = 1024;

			// 바이트 배열 준비
			byte[] bytes = new byte[byteSize];

			// 총 읽은 바이트 수 변수
			int totalRead = 0;

			// 파일 끝까지 읽기
			while ((int) (totalRead += fis.read(bytes)) != -1) {
				// 읽은 바이트 처리
				for (byte b : bytes) {
					System.out.print(b);
				}
			}

			// 스트림 닫기
			fis.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
