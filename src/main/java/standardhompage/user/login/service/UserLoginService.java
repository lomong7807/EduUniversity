package standardhompage.user.login.service;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import standardhompage.admin.login.mapper.AdminLoginMapper;
import standardhompage.dto.user.UserReq;
import standardhompage.security.CustomUserDetails;
import standardhompage.dto.admin.AdminInfoRes;
import standardhompage.dto.customUser.CustomUserReq;
import standardhompage.dto.user.UserRes;
import standardhompage.user.login.mapper.UserLoginMapper;

import java.time.LocalDateTime;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

@Log4j2
@Service
public class UserLoginService {

    @Autowired
    UserLoginMapper userLoginMapper;

    @Autowired
    AdminLoginMapper adminLoginMapper;
    @Autowired
    private PasswordEncoder passwordEncoder;


    public Authentication authenticate(CustomUserReq req) {
        String id = req.getId();
        String pw = req.getPw();

        UserDetails userDetails = findUserDetails(id, pw);
        if (userDetails == null) {
            throw new BadCredentialsException("Invalid username or password");
        }

        return new UsernamePasswordAuthenticationToken(userDetails, null, userDetails.getAuthorities());
    }

    private UserDetails findUserDetails(String id, String pw) {
        UserRes userRes = userLoginMapper.getUserById(id);
        if (userRes != null && passwordEncoder.matches(pw, userRes.getUser_pw())) {
            return createCustomUserDetails(userRes.getUser_id(), userRes.getUser_name(), userRes.getRole_seq(), userRes.getCompany_seq(), userRes.getCompany_id(), userRes.getCompany_name());
        }
        /*if (userRes != null && pw.equals(userRes.getUser_pw())) {
            return createCustomUserDetails(userRes.getUser_id(), userRes.getUser_name(), userRes.getRole_seq(), userRes.getCompany_seq(), userRes.getCompany_id(), userRes.getCompany_name());
        }*/

        AdminInfoRes adminRes = adminLoginMapper.getAdminById(id);
        /*if (adminRes != null && passwordEncoder.matches(pw, adminRes.getPw())) {
            return createCustomUserDetails(adminRes.getId(), adminRes.getName(), adminRes.getRole_seq(), adminRes.getCompany_seq(), adminRes.getCompany_id(), adminRes.getCompany_name());
        }*/
        if (adminRes != null && pw.equals(adminRes.getPw())) {
            return createCustomUserDetails(adminRes.getId(), adminRes.getName(), adminRes.getRole_seq(), adminRes.getCompany_seq(), adminRes.getCompany_id(), adminRes.getCompany_name());
        }

        return null;
    }

    private CustomUserDetails createCustomUserDetails(String id,
                                                      String name,
                                                      int roleSeq,
                                                      int companySeq,
                                                      String companyId,
                                                      String companyName) {
        CustomUserReq userReq = new CustomUserReq();
        userReq.setId(id);
        userReq.setName(name);
        userReq.setRole_seq(roleSeq);
        userReq.setCompanySeq(companySeq);
        userReq.setCompanyId(companyId);
        userReq.setCompanyName(companyName);
        return new CustomUserDetails(userReq);
    }

        public String getRedirectUrlByAuthorities(Collection<? extends GrantedAuthority> authorities) {
            log.error("authorities======================================================");

            log.error(authorities.toString());
            log.error("authorities======================================================");
            return authorities.stream()
                    .anyMatch(a -> a.getAuthority().startsWith("ROLE_ADMIN"))
                    ? "/admin/main"
                    : "/site/main";
        }

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

        String encodePw = passwordEncoder.encode(req.getUser_pw());

        req.setUser_pw(encodePw);
        req.setRegister_ip(ipAddr);
        req.setWrite_time(currentTime);
        req.setRole_seq(1);
        req.setCompany_seq(102);

        try{

            boolean insertResult = userLoginMapper.insertUser(req);
            result.put("success", insertResult);

        }catch (Exception e){
            log.error("Exception [UserLoginService.insertUserService] : {}", e.getStackTrace()[0]);
            result.put("error", "An error occurred while fetching insert User");
            result.put("errorMessage", e.getMessage());
            throw new RuntimeException(e);
        }

        return result;
    }

    // Count
    public Map<String, Object> getUserCountById(String id){

        Map<String, Object> result = new HashMap<>();

        try{

            int chkResult = userLoginMapper.getUserCountById(id);
            result.put("result", chkResult);

        }catch (Exception e){
            log.error("Exception [UserLoginService.getUserCountByIdService] : {}", e.getStackTrace()[0]);
            result.put("error", "An error occurred while fetching check User id");
            result.put("errorMessage", e.getMessage());
            throw new RuntimeException(e);
        }

        return result;
    }

    public Map<String, Object> getUserCountByHp(String hp){

        Map<String, Object> result = new HashMap<>();

        try{

            int chkResult = userLoginMapper.getUserCountByHp(hp);
            result.put("result", chkResult);

        }catch (Exception e){
            log.error("Exception [UserLoginService.getUserCountByHpService] : {}", e.getStackTrace()[0]);
            result.put("error", "An error occurred while fetching check User hp");
            result.put("errorMessage", e.getMessage());
            throw new RuntimeException(e);
        }

        return result;
    }
}
