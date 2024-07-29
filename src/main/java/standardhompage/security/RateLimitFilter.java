package standardhompage.security;

import io.github.bucket4j.*;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.extern.log4j.Log4j2;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.filter.OncePerRequestFilter;

import java.io.IOException;
import java.time.Duration;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;

@Log4j2
public class RateLimitFilter extends OncePerRequestFilter {

    private static final Map<String, Bucket> buckets = new ConcurrentHashMap<>();
    private static final long CAPACITY = 50; // 최대 토큰 개수
    private static final long REFILL_TOKENS = 25; // 리필 토큰 개수
    private static final Duration REFILL_DURATION = Duration.ofSeconds(30); // 토큰 리필 주기 ( 30초 )

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
            throws ServletException, IOException {

        if (shouldSkipRateLimiting(request)) {
            filterChain.doFilter(request, response);
            return;
        }

        String key = getBucketKey(request, response);
        Bucket bucket = buckets.computeIfAbsent(key, this::newBucket);

        // 페이지 요청마다 토큰 1개 사용
        if (bucket.tryConsume(1)) {
            filterChain.doFilter(request, response);
        } else {
            handleRateLimitExceeded(request, response);
        }
    }

    // GET 요청이 아니거나 아래 경로에 대한 요청은 토큰 사용 안함
    private boolean shouldSkipRateLimiting(HttpServletRequest request) {
        String path = request.getRequestURI();
        return isStaticResource(path) ||
                path.startsWith("/site/main") ||
                path.startsWith("/site/js") ||
                path.startsWith("/site/getHeader") ||
                path.startsWith("/fonts/common") ||
                path.startsWith("/error/429") ||
                !HttpMethod.GET.matches(request.getMethod());
    }

    // 새로운 토큰 버킷 생성
    private Bucket newBucket(String ip) {
        Refill refill = Refill.intervally(REFILL_TOKENS, REFILL_DURATION);
        Bandwidth limit = Bandwidth.classic(CAPACITY, refill);
        log.info("Created new bucket for IP: {}", ip);

        return Bucket4j.builder().addLimit(limit).build();
    }

    // 토큰 모두 사용시 에러 페이지로 이동
    private void handleRateLimitExceeded(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        log.warn("Rate limit exceeded for IP: {}, URI: {}", getClientIP(request), request.getRequestURI());
        response.setStatus(HttpStatus.TOO_MANY_REQUESTS.value());
        request.getRequestDispatcher("/error/429").forward(request, response);
    }

    private String getClientIP(HttpServletRequest request) {
        String xfHeader = request.getHeader("X-Forwarded-For");
        return xfHeader == null ? request.getRemoteAddr() : xfHeader.split(",")[0];
    }

    private boolean isStaticResource(String path) {
        return path.matches(".*\\.(css|js|png|jpg|gif|woff|woff2|fonts)$");
    }

    private String getBucketKey(HttpServletRequest request, HttpServletResponse response) {
        String ip = getClientIP(request);

        String userId = getUserIdentifier(request, response);  // response 추가

        return userId + "-" + ip;
    }

    private String getUserIdentifier(HttpServletRequest request, HttpServletResponse response) {
        if (SecurityContextHolder.getContext().getAuthentication() != null &&
                SecurityContextHolder.getContext().getAuthentication().isAuthenticated()) {
            return SecurityContextHolder.getContext().getAuthentication().getName();
        }

        // 비회원 사용자를 위한 고유 ID 처리
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if ("visitorId".equals(cookie.getName())) {
                    return cookie.getValue();
                }
            }
        }

        // 새로운 비회원 사용자에게 고유 ID 부여
        String visitorId = UUID.randomUUID().toString();
        Cookie visitorCookie = new Cookie("visitorId", visitorId);
        visitorCookie.setMaxAge(30 * 24 * 60 * 60); // 30일 유효
        visitorCookie.setPath("/");
        visitorCookie.setHttpOnly(true);
        visitorCookie.setSecure(request.isSecure()); // HTTPS 사용 시 true
        response.addCookie(visitorCookie);

        return visitorId;
    }

}
