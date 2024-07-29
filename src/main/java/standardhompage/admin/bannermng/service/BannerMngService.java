package standardhompage.admin.bannermng.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import jakarta.servlet.http.HttpServletRequest;
import standardhompage.admin.bannermng.mapper.BannerMngMapper;
import standardhompage.comnUtil.ComnUtil;
import standardhompage.dto.banner.BannerMngInputReq;
import standardhompage.dto.banner.BannerMngReq;
import standardhompage.dto.banner.BannerMngRes;
import standardhompage.dto.uploadFile.UploadFileReq;
import standardhompage.security.CustomUserDetails;

@Service
public class BannerMngService {

	@Autowired
	private BannerMngMapper bannerMapper;
	
	@Autowired
	private ComnUtil comnUtil;
	
	
	public String serviceController(BannerMngInputReq bannerMngInputReq, HttpServletRequest req) {
		BannerMngReq bannerMngReq = new BannerMngReq();
		UploadFileReq uploadFileReq = new UploadFileReq();
		String result = null;
		int seq = 0;
	
		MultipartFile file = bannerMngInputReq.getBanner_image_url();
		
		
		if(!bannerMngInputReq.getBanner_image_url().isEmpty()) {
			// 파일저장
			uploadFileReq = comnUtil.uploadFile(file,"banner",0);
			uploadFileReq.setWrite_ip(req.getLocalAddr());
			comnUtil.insertFileUpload(uploadFileReq);
			
			// 파일정보 저장
			bannerMngReq.setBanner_image_url(uploadFileReq.getFile_dir());
		}
		if(bannerMngInputReq.getBanner_seq() != null && !bannerMngInputReq.getBanner_seq().equals("")) {
			seq = Integer.valueOf(bannerMngInputReq.getBanner_seq());
		}
		
		bannerMngReq.setBanner_link_text(bannerMngInputReq.getBanner_link_text());
		bannerMngReq.setBanner_link_url(bannerMngInputReq.getBanner_link_url());
		bannerMngReq.setBanner_small_text(bannerMngInputReq.getBanner_small_text());
		bannerMngReq.setBanner_text(bannerMngInputReq.getBanner_text());
		
		
		String adminId = "";
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication != null && authentication.getPrincipal() instanceof CustomUserDetails) {
            CustomUserDetails userDetails = (CustomUserDetails) authentication.getPrincipal();
            adminId = userDetails.getUser().getId();
        }
		bannerMngReq.setWrite_id(adminId);
		
		if(seq != 0) {
			bannerMapper.updateBannerMngData(bannerMngReq);
		} else {
			bannerMapper.insertBannerMngData(bannerMngReq);
			
		} 
		return result;
	}
	
	
	public Map<String, Object> getBannerList(int page, int pageSize, String searchCate, String keyword, int banner_seq) {

		Map<String, Object> result = new HashMap<>();
		
		try {
			int offset = (page - 1) * pageSize;
			List<BannerMngRes> adminList = bannerMapper.getBannerList(pageSize, offset, searchCate, keyword, banner_seq);
			int totalRecords = bannerMapper.getBannerListCnt(searchCate, keyword);

			result.put("adminList", adminList);
			result.put("totalRecords", totalRecords);
			result.put("currentPage", page);
			result.put("pageSize", pageSize);

		} catch (Exception e) {
			result.put("error", "An error occurred while fetching admin info list");
			result.put("errorMessage", e.getMessage());
			throw new RuntimeException(e);
		}
		return result;
	}
	
	
	 @Transactional
	    public Map<String, Object> deleteBannerData(String checkedValues){

	        Map<String, Object> result = new HashMap<>();
	        String[] seqArray = checkedValues.split(",");

	        for (String seqStr : seqArray) {
	            try{

	                int seq = Integer.parseInt(seqStr.trim()); // 양 끝의 공백 제거
	                int deleteResult = bannerMapper.deleteBannerData(seq);
	                result.put("result", deleteResult);

	            }catch (NumberFormatException e){
	                result.put("error", "An error occurred while fetching delete admin");
	                result.put("errorMessage", e.getMessage());
	                throw new RuntimeException(e);
	            }catch (Exception e){
	                result.put("error", "An error occurred while fetching delete admin");
	                result.put("errorMessage", e.getMessage());
	                throw new RuntimeException(e);
	            }
	        }
	        return result;
	    }
}
