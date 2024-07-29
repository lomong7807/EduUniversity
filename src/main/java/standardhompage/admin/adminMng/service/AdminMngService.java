package standardhompage.admin.adminMng.service;

import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import standardhompage.admin.adminMng.mapper.AdminMngMapper;
import standardhompage.dto.admin.AdminInfoReq;
import standardhompage.dto.admin.AdminInfoRes;
import standardhompage.dto.user.UserReq;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Log4j2
@Service
public class AdminMngService {

    @Autowired
    AdminMngMapper adminMngMapper;

    // Get Admin List
    public Map<String, Object> getAdminList(int page, int pageSize, String searchCate, String keyword){

        Map<String, Object> result = new HashMap<>();

        try {

            int offset = (page - 1) * pageSize;
            List<AdminInfoRes> adminList = adminMngMapper.getAdminList(pageSize, offset, searchCate, keyword);
            int totalRecords = adminMngMapper.getAdminListCount(searchCate, keyword);

            result.put("adminList", adminList);
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

    // Get Admin
    public AdminInfoRes getAdminBySeq(Integer admin_seq){

        if(admin_seq != null && admin_seq > 0) {
            try {

                return adminMngMapper.selectAdminBySeq(admin_seq);

            } catch (Exception e) {
                log.error("Exception [AdminMngService.getAdminBySeqService] : {}", e.getStackTrace()[0]);
                throw new RuntimeException(e);
            }
        }else{
            return null;
        }

    }

    // Insert Admin
    public Map<String, Object> insertAdmin(AdminInfoReq req, HttpServletRequest request){

        Map<String, Object> result = new HashMap<>();

        LocalDateTime currentTime = LocalDateTime.now();
        String ipAddr = request.getHeader("X-Forwarded-For");

        if (ipAddr != null && !ipAddr.isEmpty()) {
            String[] ipAddresses = ipAddr.split(",");
            ipAddr = ipAddresses[ipAddresses.length - 1];
        } else {
            ipAddr = request.getRemoteAddr();
        }

        req.setWrite_ip(ipAddr);
        req.setWrite_time(currentTime);
        req.setHp(formatPhoneNumber(req.getHp()));

        try {

            int insertResult = adminMngMapper.insertAdmin(req);
            result.put("result", insertResult);

        }catch (Exception e){
            log.error("Exception [AdminMngService.insertAdminService] : {}", e.getStackTrace()[0]);
            result.put("error", "An error occurred while fetching insert admin");
            result.put("errorMessage", e.getMessage());
            throw new RuntimeException(e);
        }

        return result;
    }

    // Update Admin
    public Map<String, Object> updateAdmin(AdminInfoReq req, HttpServletRequest request){
        Map<String, Object> result = new HashMap<>();

        req.setHp(formatPhoneNumber(req.getHp()));

        try {
            int updateResult = adminMngMapper.updateAdmin(req);
            result.put("result", updateResult);

        }catch (Exception e){
            log.error("Exception [UserMngService.updateUserService] : {}", e.getStackTrace()[0]);
            result.put("error", "An error occurred while fetching update User");
            result.put("errorMessage", e.getMessage());
            throw new RuntimeException(e);
        }

        return result;
    }


    // Delete Admin
    @Transactional
    public Map<String, Object> deleteAdminBySeq(String checkedValues){

        Map<String, Object> result = new HashMap<>();
        String[] seqArray = checkedValues.split(",");

        for (String seqStr : seqArray) {
            try{

                int seq = Integer.parseInt(seqStr.trim()); // 양 끝의 공백 제거
                int deleteResult = adminMngMapper.deleteAdminBySeq(seq);
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

    // Count
    public Map<String, Object> getAdminCountById(String id){

        Map<String, Object> result = new HashMap<>();

        try{

            int chkResult = adminMngMapper.getAdminCountById(id);
            result.put("result", chkResult);

        }catch (Exception e){
            log.error("Exception [AdminMngService.getAdminCountByIdService] : {}", e.getStackTrace()[0]);
            result.put("error", "An error occurred while fetching check admin id");
            result.put("errorMessage", e.getMessage());
            throw new RuntimeException(e);
        }

        return result;
    }

    public Map<String, Object> getAdminCountByHp(String id, String hp){

        Map<String, Object> result = new HashMap<>();

        try{

            int chkResult = adminMngMapper.getAdminCountByHp(id, hp);
            result.put("result", chkResult);

        }catch (Exception e){
            log.error("Exception [AdminMngService.getAdminCountByHpService] : {}", e.getStackTrace()[0]);
            result.put("error", "An error occurred while fetching check admin hp");
            result.put("errorMessage", e.getMessage());
            throw new RuntimeException(e);
        }

        return result;
    }

    // Format Hp
    public static String formatPhoneNumber(String phoneNumber) {
        // 정규 표현식 패턴 설정
        Pattern pattern = Pattern.compile("(\\d{3})(\\d{4})(\\d{4})");
        Matcher matcher = pattern.matcher(phoneNumber);

        // 입력된 번호가 원하는 형식에 맞는지 확인하고, 맞으면 포맷팅하여 반환
        if (matcher.matches()) {
            return matcher.replaceFirst("$1-$2-$3");
        } else {
            // 형식에 맞지 않는 경우 또는 null 또는 빈 문자열인 경우 처리
            // 예: 010-0000-0000 외의 다른 형식이 들어온 경우
            return phoneNumber;
        }
    }

}
