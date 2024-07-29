package standardhompage.admin.commoncd.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import standardhompage.admin.commoncd.service.ComnCdService;
import standardhompage.dto.commoncd.ComnCdReq;
import standardhompage.dto.commoncd.ComnCdRes;

@Controller
@RequestMapping("admin")
public class ComnCdController {

	@Autowired
	ComnCdService comnCdService;

	@GetMapping("/comnCdMng")
	public String comnCdMng(Model model) {
		return "admin/comnCdMng";
	}

	@PostMapping("/comnCdSearch")
	@ResponseBody
	public Map<String, Object> comnCdSearch(@RequestParam(name = "page", defaultValue = "1") Integer page,
			@RequestParam(name = "pageSize", defaultValue = "20") Integer pageSize,
			@RequestParam(name = "searchCate", required = false) String searchCate,
			@RequestParam(name = "keyword", required = false) String keyword) {
		System.out.println("타긴함");
		System.out.println(keyword);
		Map<String, Object> result = comnCdService.getComnCdList(page, pageSize, searchCate, keyword);
		return result;
	}

	@GetMapping("/registerCode")
	public String registerCode() {
		return "admin/codeRegister";
	}

	@PostMapping("/registerCodeProc")
	@ResponseBody
	public int registerCodeProc(ComnCdReq req) {
		System.out.println(req.toString());
		return comnCdService.registerCmnCd(req);
	}

	@PostMapping("/updateCodeProc")
	@ResponseBody
	public int updateCodeProc(ComnCdReq req) {
		return comnCdService.updateCmnCd(req);
	}

	@GetMapping("/comnCdDetail/{cdId}")
	public String updateCode(Model model, @PathVariable("cdId") int cdId) {
		ComnCdRes res = comnCdService.getComnCdByCdSeq(cdId);
		model.addAttribute("comnCd", res);
		return "admin/codeUpdate";
	}

	@GetMapping("/test")
	public String test() {
		return "admin/comnCdMng2";
	}

}
