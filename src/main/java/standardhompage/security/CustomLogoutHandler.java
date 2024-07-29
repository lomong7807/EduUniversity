package standardhompage.security;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.logout.LogoutHandler;
import org.springframework.stereotype.Component;
import standardhompage.admin.adminLog.service.AdminLogService;
import standardhompage.comnUtil.LoggingUtil;
import standardhompage.dto.adminLog.AdminLogReq;
import standardhompage.dto.userLog.UserLogReq;
import standardhompage.user.userLog.service.UserLogService;

import java.time.LocalDateTime;

@Component
public class CustomLogoutHandler implements LogoutHandler {


    @Autowired
    private AdminLogService adminLogService;

    @Autowired
    private UserLogService userLogService;

    @Override
    public void logout(HttpServletRequest request, HttpServletResponse response, Authentication authentication) {
        if (authentication != null) {
            String userId = authentication.getName();
            boolean isAdmin = authentication.getAuthorities().stream()
                    .anyMatch(a -> a.getAuthority().startsWith("ROLE_ADMIN"));

            if (isAdmin) {
                logAdminLogout(request, userId);
            } else {
                logUserLogout(request, userId);
            }
        }
    }

    private void logAdminLogout(HttpServletRequest request, String userId) {
        AdminLogReq logReq = new AdminLogReq();
        logReq.setJob_name("logout");
        logReq.setWrite_ip(request.getRemoteAddr());
        logReq.setJob_url(request.getRequestURI());
        logReq.setWrite_id(userId);
        logReq.setWrite_time(LocalDateTime.now());
        logReq.setForm_value("Admin logged out: " + userId);
        adminLogService.insertAdminLog(logReq);
    }

    private void logUserLogout(HttpServletRequest request, String userId) {
        UserLogReq logReq = new UserLogReq();
        logReq.setJob_name("logout");
        logReq.setWrite_ip(request.getRemoteAddr());
        logReq.setJob_url(request.getRequestURI());
        logReq.setSession_id(request.getSession().getId());
        logReq.setUser_agent(LoggingUtil.sanitizeUserAgent(request.getHeader("User-Agent")));
        logReq.setWrite_id(userId);
        logReq.setWrite_time(LocalDateTime.now());
        logReq.setForm_value("User logged out: " + userId);
        userLogService.insertUserLog(logReq);
    }
}
