package standardhompage.security;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.extern.log4j.Log4j2;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.access.AccessDeniedHandler;
import org.springframework.stereotype.Component;

import java.io.IOException;

@Log4j2
@Component
public class CustomAccessDeniedHandler implements AccessDeniedHandler {

    @Override
    public void handle(HttpServletRequest request, HttpServletResponse response, AccessDeniedException accessDeniedException) throws IOException, ServletException {
        log.error("=====================customAccessDeniedHandler=====================");
        log.error("Access Denied for request: {}", request.getRequestURI());

        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null && auth.isAuthenticated()) {
            if (request.getRequestURI().startsWith("/site/login")
                    || request.getRequestURI().startsWith("/site/register")
                    || request.getRequestURI().startsWith("/site/find-account")) {
                log.info("Authenticated user trying to access login/register/find-account page. Redirecting to main.");
                response.sendRedirect("/site/main");  // 메인 페이지로 리다이렉트
                return;
            }
        }
        /*
        * 원래 해당 페이지는 403 에러 페이지가 맞지만
        * 사용자가 권한이 없는 페이지가 있다는 사실을 모르게 하기 위해 404 에러 처리
        */
        response.sendRedirect("/error/404");  // 404 에러 페이지로 리다이렉트
    }
}
