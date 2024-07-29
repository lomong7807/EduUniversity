package standardhompage.admin.siteMenuMng.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.extern.log4j.Log4j2;
import standardhompage.admin.boardConfig.service.BoardConfigService;
import standardhompage.admin.siteMenuMng.service.SiteMenuService;
import standardhompage.dto.boardConfig.BoardConfigReq;
import standardhompage.dto.boardConfig.BoardConfigRes;
import standardhompage.dto.sitemenu.SiteMenuReq;
import standardhompage.dto.sitemenu.SiteMenuRes;

@Controller
@RequestMapping("admin")
@Log4j2
public class SiteMenuController {

	@Autowired
	SiteMenuService menuService;

	@Autowired
	BoardConfigService boardConfigService;

	@Autowired
	HttpSession session;

	@GetMapping("/siteMenuMng")
	public String menuMng(Model model) {
		return "admin/siteMenuMng";
	}

	@PostMapping("/siteMenuSearch")
	@ResponseBody
	public Map<String, Object> siteMenuSearch(@RequestParam(name = "page", defaultValue = "1") Integer page,
			@RequestParam(name = "pageSize", defaultValue = "20") Integer pageSize,
			@RequestParam(name = "searchCate", required = false) String searchCate,
			@RequestParam(name = "keyword", required = false) String keyword,
			@RequestParam(name = "p_menu_seq") int p_menu_seq) {
		System.out.println(keyword);
		Map<String, Object> result = menuService.getSiteMenuList(page, pageSize, searchCate, keyword, p_menu_seq);
		return result;
	}

	@GetMapping("/siteMenuRegister")
	public String menuRegister(Model model) {
		model.addAttribute("pMenus", menuService.getParentMenus());
		model.addAttribute("boardType", boardConfigService.getBoardType());
		return "admin/siteMenuRegister";
	}

	@GetMapping("/siteMenuDetail/{menu_seq}")
	public String menuDetail(Model model, @PathVariable("menu_seq") int menu_seq) {
		System.out.println(menu_seq);
		System.out.println(menuService.getSiteMenuByMenuId(menu_seq).toString());
		model.addAttribute("menu", menuService.getSiteMenuByMenuId(menu_seq));
		return "admin/siteMenuDetail";
	}

	@GetMapping("/siteMenuUpdate/{menu_seq}")
	public String menuUpdate(Model model, @PathVariable("menu_seq") int menu_seq) {
		model.addAttribute("boardType", boardConfigService.getBoardType());
		model.addAttribute("pMenus", menuService.getParentMenus());
		SiteMenuRes siteMenuRes = menuService.getSiteMenuByMenuId(menu_seq);
		model.addAttribute("menu", siteMenuRes);
		System.out.println(siteMenuRes.toString());
		if (siteMenuRes.getMenu_type().equals("board")) {
			model.addAttribute("config", boardConfigService.getBoardConfigByMenuSeq(siteMenuRes.getMenu_seq()));
			BoardConfigRes res = boardConfigService.getBoardConfigByMenuSeq(siteMenuRes.getMenu_seq());
			System.out.println(res.toString());

		}
		model.addAttribute("parentMenus", menuService.getParentMenus());
		return "admin/siteMenuUpdate";
	}

	@PostMapping("/siteMenuRegProc")
	@ResponseBody
	public int menuRegProc(SiteMenuReq sreq, BoardConfigReq breq, HttpServletRequest req) {
		try {
			menuService.registerSiteMenu(sreq, breq);
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(sreq.toString());
		System.out.println(breq.toString());
		return 1;
	}

	@PostMapping("/siteMenuUpdateProc")
	@ResponseBody
	public int menuUpdateProc(SiteMenuReq req) {
		System.out.println(req.toString());
		menuService.updateSiteMenu(req);
		return 1;
	}

	@PostMapping("/siteMenuDelProc")
	@ResponseBody
	public int menuDelProc(@RequestBody Map<String, Object> map) {
		return menuService.deleteSiteMenu((String) map.get("delMenus"));
	}
}
