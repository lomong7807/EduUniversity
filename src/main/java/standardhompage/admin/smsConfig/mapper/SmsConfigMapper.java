package standardhompage.admin.smsConfig.mapper;

import org.apache.ibatis.annotations.Mapper;
import standardhompage.dto.smsConfig.SmsConfigReq;
import standardhompage.dto.smsConfig.SmsConfigRes;

@Mapper
public interface SmsConfigMapper {

    public SmsConfigRes getSmsConfig();
    public int insertSmsConfig(SmsConfigReq req);
    public int updateSmsConfig(SmsConfigReq req);
}
