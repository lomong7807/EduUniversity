package standardhompage.admin.baseconfig.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import lombok.extern.log4j.Log4j2;
import standardhompage.admin.baseconfig.mapper.BaseConfigMapper;
import standardhompage.comnUtil.ComnUtil;
import standardhompage.dto.baseconfig.BaseConfigInputReq;
import standardhompage.dto.baseconfig.BaseConfigReq;
import standardhompage.dto.baseconfig.BaseConfigRes;
import standardhompage.security.CustomUserDetails;

@Log4j2
@Service
public class BaseConfigService {

	@Autowired
	private BaseConfigMapper baseConfigMapper;

	@Autowired
	private ComnUtil comnUtil;

	/**
	 * insert / update 분기 설정
	 * 
	 * @return
	 */
	public String serviceController(BaseConfigInputReq inputReq) {
		
		
		int company_seq = 0;
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication != null && authentication.getPrincipal() instanceof CustomUserDetails) {
            CustomUserDetails userDetails = (CustomUserDetails) authentication.getPrincipal();
            company_seq = userDetails.getUser().getCompanySeq();
        }

		// 실 데이터 유무 확인
		
		boolean exist = comnUtil.selectExistCompanySeq(company_seq, "edt_base_config");

		if (exist) {
			// 해당 계정의 데이터가 존재 시
			updateBaseConfig(inputReq, company_seq);
			return "update 완료";
		} else {
			// 계정의 데이터가 존재 하지 않을 시
			insertBaseConfig(inputReq, company_seq);
			return "insert 완료";
		}
	}

	/**
	 * 작업일 : 20024-06-18 
	 * 설 명 : BaseConfig 설정 Insert
	 * 
	 * @return 성공 실패 여부
	 */
	public String insertBaseConfig(BaseConfigInputReq inputReq, int companySeq) {
		BaseConfigReq baseConfigReq = new BaseConfigReq();

		// 데이터 추가
		baseConfigReq.setBusiness_no(inputReq.getBusiness_no());
		baseConfigReq.setCeo_name(inputReq.getCeo_name());
		baseConfigReq.setCompany_address(inputReq.getCompany_address());
		baseConfigReq.setCompany_seq(companySeq);
		baseConfigReq.setCompany_name(inputReq.getCompany_name());
		baseConfigReq.setCopyright(inputReq.getCopyright());
		baseConfigReq.setEmail(inputReq.getEmail());
		baseConfigReq.setMain_banner_text(inputReq.getMain_banner_text());
		baseConfigReq.setSite_title(inputReq.getSite_title());
		baseConfigReq.setTel(inputReq.getTel());

		MultipartFile logfile = inputReq.getLogo_image();
		MultipartFile faviconfile = inputReq.getFavicon_image();

		String logoOrgNm = logfile.getOriginalFilename();
		String faviconOrgNm = faviconfile.getOriginalFilename();

		baseConfigReq.setLogo_image_org_nm(logoOrgNm);
		baseConfigReq.setFavicon_org_nm(faviconOrgNm);

		byte[] byteLogo = comnUtil.convertBlob(logfile);
		byte[] byteFavicon = comnUtil.convertBlob(faviconfile);

		baseConfigReq.setFavicon(byteFavicon);
		baseConfigReq.setLogo_image(byteLogo);

		try {
			baseConfigMapper.insertBaseConfig(baseConfigReq);
			return "SUCC";
		} catch (Exception e) {
			e.printStackTrace();
			return "BaseConfig_Insert_Error ";
		}
	}

	public String updateBaseConfig(BaseConfigInputReq inputReq, int companySeq) {
		BaseConfigReq baseConfigReq = new BaseConfigReq();

		// 데이터 추가
		baseConfigReq.setBusiness_no(inputReq.getBusiness_no());
		baseConfigReq.setCeo_name(inputReq.getCeo_name());
		baseConfigReq.setCompany_address(inputReq.getCompany_address());
		baseConfigReq.setCompany_seq(companySeq);
		baseConfigReq.setCompany_name(inputReq.getCompany_name());
		baseConfigReq.setCopyright(inputReq.getCopyright());
		baseConfigReq.setEmail(inputReq.getEmail());
		baseConfigReq.setMain_banner_text(inputReq.getMain_banner_text());
		baseConfigReq.setSite_title(inputReq.getSite_title());
		baseConfigReq.setTel(inputReq.getTel());

		MultipartFile logfile = inputReq.getLogo_image();
		MultipartFile faviconfile = inputReq.getFavicon_image();

		String logoOrgNm = logfile.getOriginalFilename();
		String faviconOrgNm = faviconfile.getOriginalFilename();

		baseConfigReq.setLogo_image_org_nm(logoOrgNm);
		baseConfigReq.setFavicon_org_nm(faviconOrgNm);

		byte[] byteLogo = comnUtil.convertBlob(logfile);
		byte[] byteFavicon = comnUtil.convertBlob(faviconfile);

		baseConfigReq.setFavicon(byteFavicon);
		baseConfigReq.setLogo_image(byteLogo);

		try {
			baseConfigMapper.updateBaseConfig(baseConfigReq);
			return "SUCC";
		} catch (Exception e) {
			e.printStackTrace();
			return "BaseConfig_Insert_Error ";
		}
	}

	/**
	 * 작성일 : 2024-06-20 설 명 : 페이지 로드시 데이터 조회
	 * 
	 * @param session
	 * @return String
	 */
	public BaseConfigRes selectBaseConfig() {

		int company_seq = 0;
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication != null && authentication.getPrincipal() instanceof CustomUserDetails) {
            CustomUserDetails userDetails = (CustomUserDetails) authentication.getPrincipal();
            company_seq = userDetails.getUser().getCompanySeq();
        }
		
		return baseConfigMapper.selectBaseConfigData(company_seq);
	}
}
