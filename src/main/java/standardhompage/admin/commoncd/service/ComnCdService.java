package standardhompage.admin.commoncd.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.log4j.Log4j2;
import standardhompage.admin.commoncd.mapper.ComnCdMapper;
import standardhompage.dto.admin.AdminInfoRes;
import standardhompage.dto.commoncd.ComnCdReq;
import standardhompage.dto.commoncd.ComnCdRes;

@Service
@Log4j2
public class ComnCdService {

	@Autowired
	ComnCdMapper comnCdMapper;

	public List<ComnCdRes> getComnCds() {
		return comnCdMapper.getComnCds();
	}

	public int updateCmnCd(ComnCdReq req) {
		return comnCdMapper.updateCmnCd(req);
	}

	public int registerCmnCd(ComnCdReq req) {
		return comnCdMapper.registerCmnCd(req);
	}

	public ComnCdRes getComnCdByCdSeq(int cdSeq) {
		return comnCdMapper.getComnCdByCdSeq(cdSeq);
	}

	public Map<String, Object> getComnCdList(Integer page, Integer pageSize, String searchCate, String keyword) {
		Map<String, Object> result = new HashMap<>();

		try {

			int offset = (page - 1) * pageSize;
			List<ComnCdRes> adminList = comnCdMapper.getComnCdList(pageSize, offset, searchCate, keyword);
			int totalRecords = comnCdMapper.getComnCdListCnt(searchCate, keyword);

			result.put("comnCdList", adminList);
			result.put("totalRecords", totalRecords);
			result.put("currentPage", page);
			result.put("pageSize", pageSize);

		} catch (Exception e) {
			log.error("Exception [AdminMngService.getAdminListService] : {}", e.getStackTrace()[0]);
			result.put("error", "An error occurred while fetching admin info list");
			result.put("errorMessage", e.getMessage());
			throw new RuntimeException(e);
		}
		return result;
	}

	

}
