package standardhompage.security;

import lombok.RequiredArgsConstructor;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import standardhompage.admin.login.mapper.AdminLoginMapper;
import standardhompage.dto.admin.AdminInfoRes;
import standardhompage.dto.customUser.CustomUserReq;
import standardhompage.dto.user.UserRes;
import standardhompage.user.login.mapper.UserLoginMapper;
import standardhompage.user.login.service.UserLoginService;

@Service
@RequiredArgsConstructor
public class CustomUserDetailsService implements UserDetailsService {

    private final UserLoginMapper userLoginMapper;
    private final AdminLoginMapper adminLoginMapper;

    @Override
    public CustomUserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        // 데이터베이스에서 사용자 정보를 가져옵니다. 이 예시에서는 UserLoginService를 사용합니다.
        UserRes user = userLoginMapper.getUserById(username);
        CustomUserReq customUserReq = new CustomUserReq();

        if (user != null) {
            customUserReq.setId(user.getUser_id());
            customUserReq.setRole_seq(user.getRole_seq());
            return new CustomUserDetails(customUserReq);
        }else{
            AdminInfoRes admin = adminLoginMapper.getAdminById(username);
            if(admin != null){
                customUserReq.setId(admin.getId());
                customUserReq.setRole_seq(admin.getRole_seq());
                return new CustomUserDetails(customUserReq);
            }
            throw new UsernameNotFoundException("User not found with username: " + username);
        }
    }
}
