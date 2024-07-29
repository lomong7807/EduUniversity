package standardhompage.comnUtil;

import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.log4j.Log4j2;
import org.aspectj.lang.JoinPoint;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import standardhompage.security.CustomUserDetails;

import java.time.LocalDateTime;
import java.util.Map;

@Log4j2
public abstract class BaseLogAop {

    protected abstract void insertLog(Object logReq);

    protected abstract Object createLogReq(String action, String userId, LocalDateTime currentTime, Map<String, Object> params, HttpServletRequest request);

    protected void logAction(JoinPoint joinPoint, String action, Map<String, Object> params, HttpServletRequest request) {
        LocalDateTime currentTime = LocalDateTime.now();

        String userId = "Unknown";
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication != null && authentication.getPrincipal() instanceof CustomUserDetails) {
            CustomUserDetails userDetails = (CustomUserDetails) authentication.getPrincipal();
            userId = userDetails.getUser().getId();
        }

        Object logReq = createLogReq(action, userId, currentTime, params, request);

        try {
            insertLog(logReq);
        } catch (Exception e) {
            log.error("Exception [LogAop] : {}", e.getStackTrace()[0]);
            throw new RuntimeException(e);
        }
    }


}
