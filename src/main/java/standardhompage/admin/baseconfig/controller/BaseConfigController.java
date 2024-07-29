package standardhompage.admin.baseconfig.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.HttpServletRequest;
import standardhompage.admin.baseconfig.service.BaseConfigService;
import standardhompage.dto.baseconfig.BaseConfigInputReq;
import standardhompage.dto.baseconfig.BaseConfigRes;

@Controller
@RequestMapping("/admin")
public class BaseConfigController {

	@Autowired
	private BaseConfigService baseConfigService;

	@GetMapping("/baseConfig")
	public String home() {
		return "/admin/baseConfig";
	}
	
	/**
	 * 작성일 : 2024-06-20
	 * 설  명 : baseConfig 페이지 최초 로드 시 데이터 출력 
	 * @return
	 */
	@GetMapping("/baseConfig/LoadBaseConfigData")
	public ResponseEntity<BaseConfigRes> dataBind(){
		BaseConfigRes baseConfigRes = new BaseConfigRes();
		
		try {
			baseConfigRes = baseConfigService.selectBaseConfig();
	        return ResponseEntity.ok(baseConfigRes); // HTTP 상태 코드는 OK(200)이며, 데이터는 dataDTO에 담긴 정보입니다.
	    } catch (Exception e) {
	        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build(); // 예외가 발생했을 경우 500 상태 코드를 반환합니다.
	    }
	}
	
	/**
	 * 작업일시 : 2024-06-14 
	 * 설 명 : 기초환경 설정 등록 및 결과 반환
	 * @return ResponseEntity 결과 상태값
	 */
	@PostMapping("/baseConfig/dataInput")
	public ResponseEntity<Object> dataInput(@ModelAttribute BaseConfigInputReq baseConfigInputReq, HttpServletRequest req) {
		
		Map<String, Object> response = new HashMap<>();
		
		try {
			baseConfigService.serviceController(baseConfigInputReq);

			response.put("message", "Request was Success");
			response.put("status", HttpStatus.OK.value());
			return new ResponseEntity<>(response, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			response.put("message", "Request was Fail");
			response.put("status", HttpStatus.BAD_REQUEST.value());
			return new ResponseEntity<>(response, HttpStatus.BAD_REQUEST);
		}
	}
}
