package standardhompage.admin.adminmenuMng.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import lombok.extern.log4j.Log4j2;
import org.springframework.transaction.annotation.Transactional;
import standardhompage.admin.adminmenuMng.mapper.AdminMenuMapper;
import standardhompage.dto.adminMenu.AdminMenuReq;
import standardhompage.dto.adminMenu.AdminMenuRes;
import standardhompage.dto.sitemenu.SiteMenuReq;
import standardhompage.dto.sitemenu.SiteMenuRes;

@Log4j2
@Service
public class AdminMenuService {

	@Autowired
	AdminMenuMapper menuMapper;

	@Autowired
	private RedisTemplate<String, Object> redisTemplate;

	@Cacheable(value = "adminMenus", key = "'allMenus'", unless = "#result == null")
	public List<AdminMenuRes> getAllAdminMenus() {
		return menuMapper.getAllAdminMenus();
	}

	public AdminMenuRes getAdminMenuByMenuId(int menu_seq) {
		return menuMapper.getAdminMenuByMenuId(menu_seq);
	}

	@Transactional
	@CacheEvict(value = "adminMenus", key = "'allMenus'")
	public void registerAdminMenu(AdminMenuReq req) {
		menuMapper.registerAdminMenu(req);
	}

	@Transactional
	@CacheEvict(value = "adminMenus", key = "'allMenus'")
	public int updateAdminMenu(AdminMenuReq req) {
		return menuMapper.updateAdminMenu(req);
	}

	@Transactional
	@CacheEvict(value = "adminMenus", key = "'allMenus'")
	public int deleteAdminMenu(String menu_seqs) {
		String[] arr = menu_seqs.split(",");
		for (int i = 0; i < arr.length; i++) {
			try {
				menuMapper.deleteAdminMenu(Integer.parseInt(arr[i]));
			} catch (Exception e) {
				log.error(e);
				return 1;
			}
		}
		return 0;

	}

	// paging
	public Map<String, Object> getAdminMenuList(Integer page, Integer pageSize, String searchCate, String keyword,
			int p_menu_seq) {

		Map<String, Object> result = new HashMap<>();
		try {
			int offset = (page - 1) * pageSize;
			System.out.println("p_menu_seq : " + p_menu_seq);
			List<AdminMenuRes> adminMenuList = menuMapper.getAdminMenuList(pageSize, offset, keyword, p_menu_seq);
			System.out.println(adminMenuList.toString());
			int totalRecords = menuMapper.getAdminMenuListCnt(searchCate, keyword, p_menu_seq);
			System.out.println(totalRecords);
			result.put("adminMenuList", adminMenuList);
			result.put("totalRecords", totalRecords);
			result.put("currentPage", page);
			result.put("pageSize", pageSize);
		} catch (Exception e) {
			log.error("Exception [Err_Location] : {}", e.getStackTrace()[0]);
			result.put("error", "An error occurred while fetching admin info list");
			result.put("errorMessage", e.getMessage());
			throw new RuntimeException(e);
		}

		return result;
	}

	public List<AdminMenuRes> getParentMenus() {
		return menuMapper.getParentMenus();
	}

}
