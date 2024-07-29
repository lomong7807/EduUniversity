package standardhompage.admin.sitetheme.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class SiteThemeMngController {

	@GetMapping("/siteThemeMng")
	public String home() {
		return "/admin/siteThemeMng";
	}
}
