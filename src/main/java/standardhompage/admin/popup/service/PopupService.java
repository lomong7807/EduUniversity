package standardhompage.admin.popup.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import lombok.extern.log4j.Log4j2;
import standardhompage.admin.popup.mapper.PopupMapper;
import standardhompage.comnUtil.ComnUtil;
import standardhompage.dto.popup.PopupReq;
import standardhompage.dto.popup.PopupRes;
import standardhompage.dto.uploadFile.UploadFileReq;
import standardhompage.dto.uploadFile.UploadFileRes;
import standardhompage.security.CustomUserDetails;

@Log4j2
@Service
public class PopupService {

	@Autowired
	private PopupMapper popupMapper;

	@Autowired
	private ComnUtil comnUtil;

	/**
	 * 작업일시 : 2024-06-24 설 명 : 분기 설정
	 * 
	 * @param popupReq
	 * @param content
	 * @param session
	 * @return
	 */
	public String serviceController(PopupReq popupReq, String content, String popup_seq, MultipartHttpServletRequest req) {
		int companySeq = 0;
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication != null && authentication.getPrincipal() instanceof CustomUserDetails) {
            CustomUserDetails userDetails = (CustomUserDetails) authentication.getPrincipal();
            companySeq = userDetails.getUser().getCompanySeq();
        }
		int seq = 0;
		
		if (popup_seq != null && popup_seq != " ") {
			seq = Integer.valueOf(popup_seq);
		}
		
		try {
			UploadFileRes uploadFileRes = comnUtil.editorContent(req, content, "popup");
			UploadFileReq uploadFileReq = comnUtil.settingReq(uploadFileRes);
			
			// File Data DB 저장
			if(uploadFileReq.getFile_name() != null) {
				comnUtil.insertFileUpload(uploadFileReq);
			}
			
			/***************************************/
			/*Popup Data 저장*/
			popupReq.setContent(uploadFileRes.getContent());
			// save PopupData
			if (seq > 0) {
				// 해당 계정의 데이터가 존재 시
				updatePopupData(popupReq, companySeq, seq);
				return "update 완료";
			} else {
				// 계정의 데이터가 존재 하지 않을 시
				insertPopupData(popupReq, companySeq);
				return "insert 완료";
			}
		} catch (Exception e) {
			e.printStackTrace();
			return "FAIL";
		}
	}

	
	/**
	 * 작업일시 : 2024-06-24 설 명 : Popup 등록 데이터 저장
	 * 
	 * @param popupReq
	 * @param content
	 * @param req
	 * @param session
	 */
	public void insertPopupData(PopupReq popupReq, int companySeq) {
		popupReq.setCompany_seq(companySeq);
		// DB 데이터 인설트
		popupMapper.insertPopupData(popupReq);
	}

	
	/**
	 * 작업일시 : 2024-06-24 설 명 :Popup 데이터 업데이트
	 * 
	 * @param popupReq
	 * @param content
	 * @param companySeq
	 */
	public void updatePopupData(PopupReq popupReq, int companySeq, int popupSeq) {
		popupReq.setCompany_seq(companySeq);
		try {
			popupMapper.updatePopupData(popupReq, popupSeq);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	
	/**
	 * 설 명 : popup List 데이터 조회
	 * @param page
	 * @param pageSize
	 * @param searchCate
	 * @param keyword
	 * @param popup_seq
	 * @return
	 */
	public Map<String, Object> popupList(int page, int pageSize, String searchCate, String keyword, int popup_seq) {

		Map<String, Object> result = new HashMap<>();

		try {
			int offset = (page - 1) * pageSize;
			List<PopupRes> adminList = popupMapper.getPopupList(pageSize, offset, searchCate, keyword, popup_seq);
			int totalRecords = popupMapper.getPopupListCnt(searchCate, keyword);

			result.put("adminList", adminList);
			result.put("totalRecords", totalRecords);
			result.put("currentPage", page);
			result.put("pageSize", pageSize);

		} catch (Exception e) {
			log.error("Exception [PopupService] : {}", e.getStackTrace()[0]);
			result.put("error", "An error occurred while fetching admin info list");
			result.put("errorMessage", e.getMessage());
			throw new RuntimeException(e);
		}
		return result;
	}
	
	
	 @Transactional
	    public Map<String, Object> deletePopupData(String checkedValues){

	        Map<String, Object> result = new HashMap<>();
	        String[] seqArray = checkedValues.split(",");

	        for (String seqStr : seqArray) {
	            try{

	                int seq = Integer.parseInt(seqStr.trim()); // 양 끝의 공백 제거
	                int deleteResult = popupMapper.deletePopupData(seq);
	                result.put("result", deleteResult);

	            }catch (NumberFormatException e){
	                log.error("Exception [AdminMngService.deleteAdminBySeqService Catch...1] : {}", e.getStackTrace()[0]);
	                result.put("error", "An error occurred while fetching delete admin");
	                result.put("errorMessage", e.getMessage());
	                throw new RuntimeException(e);
	            }catch (Exception e){
	                log.error("Exception [AdminMngService.deleteAdminBySeqService Catch...2] : {}", e.getStackTrace()[0]);
	                result.put("error", "An error occurred while fetching delete admin");
	                result.put("errorMessage", e.getMessage());
	                throw new RuntimeException(e);
	            }
	        }
	        return result;
	    }
}
