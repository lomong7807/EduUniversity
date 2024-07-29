package standardhompage.admin.baseconfig.mapper;

import org.apache.ibatis.annotations.Mapper;

import standardhompage.dto.baseconfig.BaseConfigReq;
import standardhompage.dto.baseconfig.BaseConfigRes;

@Mapper
public interface BaseConfigMapper {

	/**
	 * 최초 base_cofig 페이지 조회
	 * 
	 * @param sessionId
	 * @return baseConfigRes
	 */
	public BaseConfigRes selectBaseConfigData(int company_seq);

	
	/**
	 * base_config 페이지 input 저장
	 * 
	 * @param baseConfigReq
	 */
	public void insertBaseConfig(BaseConfigReq baseConfigReq);

	
	/**
	 * base_config 페이지 input 시 기존 데이터 존재하면 updateq
	 * 
	 * @param baseConfigReq
	 */
	public void updateBaseConfig(BaseConfigReq baseConfigReq);

	
	/**
	 * base_config insert 전처리
	 * 
	 * @param sessionId
	 * @return
	 */
	public int selectBaseData(int companySeq);

	
	/**
	 * Company_id 조회
	 * 
	 * @param SessionId
	 * @return
	 */
	public int selectCompanySeq(String SessionSeq);
}
