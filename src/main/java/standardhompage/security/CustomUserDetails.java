package standardhompage.security;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import lombok.extern.log4j.Log4j2;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import standardhompage.dto.customUser.CustomUserReq;
import standardhompage.dto.customUser.UserType;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

@Log4j2
@Getter
@Setter
@Builder
@ToString
public class CustomUserDetails implements UserDetails {

    public CustomUserDetails(CustomUserReq user){
        this.user = user;
    }

    private CustomUserReq user;

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        // 계정이 갖는 권한 목록
        List<GrantedAuthority> authorities = new ArrayList<>();
        try {
            // user.getRole()이 "USER", "ADMIN_GEN" 등의 문자열을 반환한다고 가정
            UserType userType = user.getRole();
            authorities.add(new SimpleGrantedAuthority(userType.getRole()));
//            log.error("Role: " + userType.getRole());
        } catch (IllegalArgumentException e) {
            log.error("Invalid role: " + user.getRole());
            // 필요한 경우, 기본 역할 또는 예외 처리를 추가할 수 있습니다.
        }
        return authorities;
    }

    @Override
    public String getPassword() {
        return user.getPw();
    }

    @Override
    public String getUsername() {
        return user.getId();
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }
}
