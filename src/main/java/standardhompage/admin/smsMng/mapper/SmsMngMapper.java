package standardhompage.admin.smsMng.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import standardhompage.dto.smsLog.SmsLogReq;
import standardhompage.dto.smsLog.SmsLogRes;
import standardhompage.dto.smsTemplate.SmsTemplateReq;
import standardhompage.dto.smsTemplate.SmsTemplateRes;

import java.util.List;

@Mapper
public interface SmsMngMapper {

    public List<SmsTemplateRes> getTemplateList();
    public List<SmsLogRes> getSmsLogList(@Param("pageSize") int pageSize,
                                         @Param("offset") int offset,
                                         @Param("searchCate") String searchCate,
                                         @Param("resultCate") String resultCate,
                                         @Param("sendTypeCate") String sendTypeCate,
                                         @Param("dateTypeCate") String dateTypeCate,
                                         @Param("startDate") String startDate,
                                         @Param("endDate") String endDate,
                                         @Param("keyword") String keyword);
    int getSmsLogListCount(@Param("searchCate") String searchCate,
                           @Param("keyword") String keyword,
                           @Param("resultCate") String resultCate,
                           @Param("sendTypeCate") String sendTypeCate,
                           @Param("dateTypeCate") String dateTypeCate,
                           @Param("startDate") String startDate,
                           @Param("endDate") String endDate);
    public int insertTemplate(SmsTemplateReq req);
    public int updateTemplate(SmsTemplateReq req);
    public int deleteTemplate(@Param("sms_template_seq") int sms_template_seq,
                              @Param("company_seq") int company_seq);

    public void insertSmsLog(SmsLogReq req);

}
