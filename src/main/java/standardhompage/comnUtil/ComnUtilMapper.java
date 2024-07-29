package standardhompage.comnUtil;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import standardhompage.dto.uploadFile.UploadFileReq;
import standardhompage.dto.uploadFile.UploadFileRes;

@Mapper
public interface ComnUtilMapper {
	
	/* 테이블 companyId 유무 조회 */
	int selectExistCompanySeq(
				@Param("companySeq") int companySeq, @Param("tableNm") String tableNm);
	
	void insertUploadFileData(UploadFileReq uploadFileReq);
	
}
