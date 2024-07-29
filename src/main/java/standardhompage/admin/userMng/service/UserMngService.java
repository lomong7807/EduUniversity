package standardhompage.admin.userMng.service;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import standardhompage.admin.userMng.mapper.UserMngMapper;
import standardhompage.dto.user.UserReq;
import standardhompage.dto.user.UserRes;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Log4j2
@Service
public class UserMngService {

    @Autowired
    private UserMngMapper userMngMapper;

    // Get User List With Page
    public Map<String, Object> getUserListPage(int page, int pageSize, String searchCate, String keyword){

        Map<String, Object> result = new HashMap<>();

        try {

            int offset = (page - 1) * pageSize;
            List<UserRes> userList = userMngMapper.getUserListPage(pageSize, offset, searchCate, keyword);
            int totalRecords = userMngMapper.getUserListPageCount(searchCate, keyword);

            result.put("userList", userList);
            result.put("totalRecords", totalRecords);
            result.put("currentPage", page);
            result.put("pageSize", pageSize);

        } catch (Exception e) {
            log.error("Exception [UserMngService.getUserListPageService] : {}", e.getStackTrace()[0]);
            result.put("error", "An error occurred while fetching User info list page");
            result.put("errorMessage", e.getMessage());
            throw new RuntimeException(e);
        }
        return result;
    }

    // Get User List
    public Map<String, Object> getUserList(String startDate, String endDate, String searchCate, String keyword){

        Map<String, Object> result = new HashMap<>();

        try {

            List<UserRes> userList = userMngMapper.getUserList(startDate, endDate, searchCate, keyword);
            int totalRecords = userMngMapper.getUserListCount(startDate, endDate,searchCate, keyword);

            result.put("userList", userList);
            result.put("totalRecords", totalRecords);

        } catch (Exception e) {
            log.error("Exception [UserMngService.getUserListService] : {}", e.getStackTrace()[0]);
            result.put("error", "An error occurred while fetching User info list page");
            result.put("errorMessage", e.getMessage());
            throw new RuntimeException(e);
        }
        return result;
    }

    // Get User
    public UserRes getUserBySeq(Integer userSeq){

        if(userSeq != null && userSeq > 0) {
            try {

                return userMngMapper.selectUserBySeq(userSeq);

            } catch (Exception e) {
                log.error("Exception [UserMngService.getUserBySeqService] : {}", e.getStackTrace()[0]);
                throw new RuntimeException(e);
            }
        }else{
            return null;
        }

    }

    // Insert User
    public Map<String, Object> insertUser(UserReq req, HttpServletRequest request){
        Map<String, Object> result = new HashMap<>();

        LocalDateTime currentTime = LocalDateTime.now();
        String ipAddr = request.getHeader("X-Forwarded-For");

        if (ipAddr != null && !ipAddr.isEmpty()) {
            String[] ipAddresses = ipAddr.split(",");
            ipAddr = ipAddresses[ipAddresses.length - 1];
        } else {
            ipAddr = request.getRemoteAddr();
        }

        req.setRegister_ip(ipAddr);
        req.setWrite_time(currentTime);
        req.setUser_hp(formatPhoneNumber(req.getUser_hp()));
        req.setRole_seq(1);

        try {
            int insertResult = userMngMapper.insertUser(req);
            result.put("result", insertResult);

        }catch (Exception e){
            log.error("Exception [UserMngService.insertUserService] : {}", e.getStackTrace()[0]);
            result.put("error", "An error occurred while fetching insert User");
            result.put("errorMessage", e.getMessage());
            throw new RuntimeException(e);
        }

        return result;
    }

    // Update User
    public Map<String, Object> updateUser(UserReq req){
        Map<String, Object> result = new HashMap<>();

        LocalDateTime currentTime = LocalDateTime.now();

        req.setUpdate_time(currentTime);
        req.setUser_hp(formatPhoneNumber(req.getUser_hp()));
        req.setRole_seq(1);

        try {
            int updateResult = userMngMapper.updateUser(req);
            result.put("result", updateResult);

        }catch (Exception e){
            log.error("Exception [UserMngService.updateUserService] : {}", e.getStackTrace()[0]);
            result.put("error", "An error occurred while fetching update User");
            result.put("errorMessage", e.getMessage());
            throw new RuntimeException(e);
        }

        return result;
    }


    // Delete User
    @Transactional
    public Map<String, Object> deleteUserBySeq(String checkedValues){
        Map<String, Object> result = new HashMap<>();
        String[] seqArray = checkedValues.split(",");

        for (String seqStr : seqArray) {
            try{

                int seq = Integer.parseInt(seqStr.trim()); // 양 끝의 공백 제거
                int deleteResult = userMngMapper.deleteUserBySeq(seq);
                result.put("result", deleteResult);

            }catch (NumberFormatException e){
                log.error("Exception [UserMngService.deleteUserBySeqService Catch...1] : {}", e.getStackTrace()[0]);
                result.put("error", "An error occurred while fetching delete User");
                result.put("errorMessage", e.getMessage());
                throw new RuntimeException(e);
            }catch (Exception e){
                log.error("Exception [UserMngService.deleteUserBySeqService Catch...2] : {}", e.getStackTrace()[0]);
                result.put("error", "An error occurred while fetching delete User");
                result.put("errorMessage", e.getMessage());
                throw new RuntimeException(e);
            }
        }
        return result;
    }

    // Count
    public Map<String, Object> getUserCountById(String id){

        Map<String, Object> result = new HashMap<>();

        try{

            int chkResult = userMngMapper.getUserCountById(id);
            result.put("result", chkResult);

        }catch (Exception e){
            log.error("Exception [UserMngService.getUserCountByIdService] : {}", e.getStackTrace()[0]);
            result.put("error", "An error occurred while fetching check User id");
            result.put("errorMessage", e.getMessage());
            throw new RuntimeException(e);
        }

        return result;
    }

    public Map<String, Object> getUserCountByHp(String hp){

        Map<String, Object> result = new HashMap<>();

        try{

            int chkResult = userMngMapper.getUserCountByHp(hp);
            result.put("result", chkResult);

        }catch (Exception e){
            log.error("Exception [UserMngService.getUserCountByHpService] : {}", e.getStackTrace()[0]);
            result.put("error", "An error occurred while fetching check User hp");
            result.put("errorMessage", e.getMessage());
            throw new RuntimeException(e);
        }

        return result;
    }

    // Login As User
    public Map<String, Object> loginAsUser(int userSeq) {
        Map<String, Object> result = new HashMap<>();

        try {
            UserRes user = userMngMapper.selectUserBySeq(userSeq);

            if (user == null) {
                result.put("error", "유효하지 않은 사용자 정보입니다.");
                return result;
            }

            result.put("redirect", "/user/userMain"); // 사용자 대시보드로 리다이렉트
            result.put("sessionEstablished", true);
            result.put("user", user);
            return result;
        } catch (Exception e) {
            log.error("Exception [UserMngService.loginAsUser] : {}", e.getStackTrace()[0]);
            result.put("error", "An error occurred while login as User");
            result.put("errorMessage", e.getMessage());
            return result;
        }
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
