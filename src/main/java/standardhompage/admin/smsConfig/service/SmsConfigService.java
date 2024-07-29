package standardhompage.admin.smsConfig.service;

import jakarta.servlet.http.HttpSession;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import standardhompage.admin.smsConfig.mapper.SmsConfigMapper;
import standardhompage.dto.smsConfig.SmsConfigReq;
import standardhompage.dto.smsConfig.SmsConfigRes;
import standardhompage.security.CustomUserDetails;

import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.Map;

@Log4j2
@Service
public class SmsConfigService {

    @Autowired
    private SmsConfigMapper smsConfigMapper;

    // Get SmsConfig
    public SmsConfigRes getSmsConfig(){

        SmsConfigRes result = new SmsConfigRes();

        try {
            result = smsConfigMapper.getSmsConfig();

        }catch (Exception e){
            log.error("Exception [SmsService.getSmsConfigService] : {}", e.getStackTrace()[0]);
        }

        return result;
    }

    // Insert SmsConfig
    public Map<String,Object> insertSmsConfig(SmsConfigReq req){
        Map<String, Object> result = new HashMap<>();
        LocalDateTime currentTime = LocalDateTime.now();

        try {
            req.setWrite_time(currentTime);

            int insertResult = smsConfigMapper.insertSmsConfig(req);

            result.put("result", insertResult);

        }catch (Exception e){
            log.error("Exception [SmsService.insertSmsConfigService] : {}", e.getStackTrace()[0]);
            result.put("error", "An error occurred while fetching insert SmsConfig");
            result.put("errorMessage", e.getMessage());
            throw new RuntimeException(e);
        }

        return result;
    }

    // Update SmsConfig
    public Map<String,Object> updateSmsConfig(SmsConfigReq req){
        Map<String, Object> result = new HashMap<>();

        try {

            int updateResult = smsConfigMapper.updateSmsConfig(req);

            result.put("result", updateResult);

        }catch (Exception e){
            log.error("Exception [SmsService.updateSmsConfigService] : {}", e.getStackTrace()[0]);
            result.put("error", "An error occurred while fetching update SmsConfig");
            result.put("errorMessage", e.getMessage());
            throw new RuntimeException(e);
        }

        return result;
    }

}
