package standardhompage.jwt;

import io.jsonwebtoken.ExpiredJwtException;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.WebAuthenticationDetailsSource;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;
import org.springframework.web.filter.OncePerRequestFilter;
import standardhompage.security.CustomUserDetails;
import standardhompage.security.CustomUserDetailsService;

import java.io.IOException;
import java.util.Arrays;

@Log4j2
@Component
public class JwtAuthenticationFilter extends OncePerRequestFilter {

    @Autowired
    private JwtTokenProvider jwtTokenProvider;

    @Autowired
    private RefreshTokenService refreshTokenService;

    @Autowired
    private CustomUserDetailsService customUserDetailsService;

    private static final String[] AUTH_WHITELIST = {
            "/error/**", "/css/**", "/js/**", "/img/**", "/lib/**", "/favicon.ico", "/fonts/**", "/site/js/**"
    };

    /*@Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
            throws ServletException, IOException {
        String path = request.getRequestURI();
        if (isWhitelistedPath(path)) {
            filterChain.doFilter(request, response);
            return;
        }
        String token = jwtTokenProvider.resolveToken(request);


        if (StringUtils.hasText(token)) {
            log.debug("JWT Token is present");
            if (jwtTokenProvider.validateToken(token)) {
                log.debug("JWT Token is valid");
                Authentication auth = jwtTokenProvider.getAuthentication(token);
                SecurityContextHolder.getContext().setAuthentication(auth);
                log.debug("Authentication set in SecurityContext: " + auth);
            } else {
                log.debug("JWT Token is invalid");
            }
        } else {
            log.debug("No JWT Token found in request");
        }

        filterChain.doFilter(request, response);
    }*/

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
            throws ServletException, IOException {
        String path = request.getRequestURI();
        if (isWhitelistedPath(path)) {
            filterChain.doFilter(request, response);
            return;
        }

        try {
            String token = jwtTokenProvider.resolveToken(request);

            if (StringUtils.hasText(token)) {
                if (jwtTokenProvider.validateToken(token)) {
                    Authentication auth = jwtTokenProvider.getAuthentication(token);
                    SecurityContextHolder.getContext().setAuthentication(auth);
                } else {
                    String username = jwtTokenProvider.getUsernameFromToken(token);
                    String refreshToken = refreshTokenService.getRefreshToken(username);
                    if (refreshToken != null && refreshTokenService.validateRefreshToken(username, refreshToken)) {
                        log.debug("Refresh token is valid, generating new access token");
                        UserDetails userDetails = customUserDetailsService.loadUserByUsername(username);
                        String newAccessToken = jwtTokenProvider.generateAccessToken((CustomUserDetails) userDetails);
                        jwtTokenProvider.addAccessTokenToCookie(response, newAccessToken);

                        Authentication auth = jwtTokenProvider.getAuthentication(newAccessToken);
                        SecurityContextHolder.getContext().setAuthentication(auth);
                    } else {
                        log.debug("Refresh token is invalid or not present");
                        SecurityContextHolder.clearContext();
                        jwtTokenProvider.removeAccessTokenCookie(response);
                        refreshTokenService.deleteRefreshToken(username);
                        response.sendRedirect("/login"); // 또는 적절한 로그인 페이지
                        return;
                    }
                }
            } else {
                log.debug("No JWT Token found in request");
            }
        } catch (Exception e) {
            log.error("Cannot set user authentication: {}", e);
            SecurityContextHolder.clearContext();
            jwtTokenProvider.removeAccessTokenCookie(response);
            response.sendRedirect("/login"); // 또는 적절한 로그인 페이지
            return;
        }

        filterChain.doFilter(request, response);
    }

    private String getJwtFromRequest(HttpServletRequest request) {
        String bearerToken = request.getHeader("Authorization");
        if (StringUtils.hasText(bearerToken) && bearerToken.startsWith("Bearer ")) {
            return bearerToken.substring(7);
        }
        return null;
    }

    private boolean isWhitelistedPath(String path) {
        return Arrays.stream(AUTH_WHITELIST).anyMatch(path::startsWith);
    }
}
