package standardhompage.admin.adminmenuMng.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import jakarta.servlet.http.HttpSession;
import standardhompage.admin.adminmenuMng.service.AdminMenuService;
import standardhompage.dto.adminMenu.AdminMenuReq;
import standardhompage.dto.adminMenu.AdminMenuRes;

@Controller
@RequestMapping("admin")
public class AdminMenuMngController {

	@Autowired
	AdminMenuService menuService;

	@Autowired
	HttpSession session;

	@GetMapping("/adminMenuMng")
	public String menuMng(Model model) {
		return "admin/adminMenuMng";
	}

	@PostMapping("/adminMenuSearch")
	@ResponseBody
	public Map<String, Object> adminMenuSearch(@RequestParam(name = "page", defaultValue = "1") Integer page,
			@RequestParam(name = "pageSize", defaultValue = "20") Integer pageSize,
			@RequestParam(name = "searchCate", required = false) String searchCate,
			@RequestParam(name = "keyword", required = false) String keyword,
			@RequestParam(name = "p_menu_seq") int p_menu_seq) {
		System.out.println("타긴함");
		System.out.println(keyword);
		Map<String, Object> result = menuService.getAdminMenuList(page, pageSize, searchCate, keyword, p_menu_seq);
		return result;
	}

	@GetMapping("/adminMenuRegister")
	public String menuRegister(Model model) {
		model.addAttribute("parentMenus", menuService.getParentMenus());
		return "admin/adminMenuRegister";
	}

	@GetMapping("/adminMenuDetail/{menu_seq}")
	public String menuDetail(Model model, @PathVariable("menu_seq") int menu_seq) {
		System.out.println(menu_seq);
		System.out.println(menuService.getAdminMenuByMenuId(menu_seq).toString());
		model.addAttribute("menu", menuService.getAdminMenuByMenuId(menu_seq));
		return "admin/adminMenuDetail";
	}

	@GetMapping("/adminMenuUpdate/{menu_seq}")
	public String menuUpdate(Model model, @PathVariable("menu_seq") int menu_seq) {
		model.addAttribute("menu", menuService.getAdminMenuByMenuId(menu_seq));
		model.addAttribute("parentMenus", menuService.getParentMenus());
		return "admin/adminMenuUpdate";
	}

	@PostMapping("/adminMenuRegProc")
	@ResponseBody
	public int menuRegProc(AdminMenuReq req) {
		System.out.println(req.toString());
		menuService.registerAdminMenu(req);
		return 1;
	}

	@PostMapping("/adminMenuUpdateProc")
	@ResponseBody
	public int menuUpdateProc(AdminMenuReq req) {
		System.out.println(req.toString());
		menuService.updateAdminMenu(req);
		return 1;
	}

	@PostMapping("/adminMenuDelProc")
	@ResponseBody
	public int menuDelProc(@RequestBody Map<String, Object> map) {
		menuService.deleteAdminMenu((String) map.get("delMenus"));
		return 1;
	}

	@GetMapping("/getAllMenus")
	@ResponseBody
	public List<AdminMenuRes> getAllMenus() {
		return menuService.getAllAdminMenus();
	}

}
