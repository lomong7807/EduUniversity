package standardhompage.user.login.controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseCookie;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.context.HttpSessionSecurityContextRepository;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import standardhompage.dto.customUser.CustomUserReq;
import standardhompage.dto.refreshToken.RefreshTokenReq;
import standardhompage.dto.refreshToken.RefreshTokenRes;
import standardhompage.dto.user.UserReq;
import standardhompage.jwt.JwtTokenProvider;
import standardhompage.jwt.RefreshTokenMapper;
import standardhompage.jwt.RefreshTokenService;
import standardhompage.security.CustomUserDetails;
import standardhompage.security.CustomUserDetailsService;
import standardhompage.user.login.service.UserLoginService;

import java.security.Principal;
import java.time.Instant;
import java.util.HashMap;
import java.util.Map;

@Log4j2
@Controller("site")
public class UserLoginController {

    @Autowired
    UserLoginService userLoginService;

    @Autowired
    CustomUserDetailsService customUserDetailsService;

    @Autowired
    JwtTokenProvider jwtTokenProvider;

    @Autowired
    RefreshTokenMapper refreshTokenMapper;

    @Autowired
    RefreshTokenService refreshTokenService;

    @Autowired
    HttpSession session;

    @GetMapping("/site/login")
    public String userLogin() {
        return "/user/other/other_login";
    }

    @GetMapping("/site/find-account")
    public String findAccount() {
        return "/user/other/other_idpwfind";
    }

    @GetMapping("/site/register")
    public String register() {
        return "/user/other/other_regist";
    }

    @PostMapping("/site/registerUser")
    @ResponseBody
    public ResponseEntity<Map<String, Object>> registerUser(UserReq req, HttpServletRequest request) {

        log.error(req.toString());
        Map<String, Object> result = userLoginService.insertUser(req, request);

        if (result.containsKey("error")) {
            return ResponseEntity.badRequest().body(result);
        }

        return ResponseEntity.ok(result);
    }

    /*@PostMapping("/login")
    public ResponseEntity<Map<String, Object>> login(@RequestBody CustomUserReq req, HttpServletRequest request) {
        try {
            Authentication authentication = userLoginService.authenticate(req);
//            SecurityContextHolder.getContext().setAuthentication(authentication);
            SecurityContext context = SecurityContextHolder.createEmptyContext();
            context.setAuthentication(authentication);
            SecurityContextHolder.setContext(context);

            HttpSession session = request.getSession(true);
            session.setAttribute(HttpSessionSecurityContextRepository.SPRING_SECURITY_CONTEXT_KEY, context);

            String redirectUrl = userLoginService.getRedirectUrlByAuthorities(authentication.getAuthorities());

            Map<String, Object> result = new HashMap<>();
            result.put("success", true);
            result.put("redirectUrl", redirectUrl);


            return ResponseEntity.ok().header(HttpHeaders.LOCATION, redirectUrl).body(result);
        } catch (BadCredentialsException e) {
            log.error("Login failed: {}", e.getMessage());
            Map<String, Object> result = new HashMap<>();
            result.put("error", "Invalid username or password");
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body(result);
        } catch (Exception e) {
            log.error("Login error: ", e);
            Map<String, Object> result = new HashMap<>();
            result.put("error", "An unexpected error occurred");
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(result);
        }
    }*/



    @PostMapping("/login")
    public ResponseEntity<?> login(@RequestBody CustomUserReq req, HttpServletResponse response) {
        try {
            Authentication authentication = userLoginService.authenticate(req);
            SecurityContextHolder.getContext().setAuthentication(authentication);

            log.error("login start================================");
            log.error("login auth :"+authentication.toString());
            log.error("login end================================================");

            CustomUserDetails userDetails = (CustomUserDetails) authentication.getPrincipal();
            String accessToken = jwtTokenProvider.generateAccessToken(userDetails);
            String refreshToken = jwtTokenProvider.generateRefreshToken(userDetails);

            // Refresh Token 을 Redis 에 저장
            refreshTokenService.saveRefreshToken(userDetails.getUsername(), refreshToken);
            // Access Token을 HttpOnly 쿠키에 저장
            addTokenToCookie(response, "accessToken", accessToken, (int) (jwtTokenProvider.getAccessTokenExpiration() / 1000));


            Map<String, Object> result = new HashMap<>();
            result.put("redirectUrl", userLoginService.getRedirectUrlByAuthorities(authentication.getAuthorities()));

            return ResponseEntity.ok(result);
        } catch (BadCredentialsException e) {
            log.error("Login failed: {}", e.getMessage());
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("Invalid username or password");
        } catch (Exception e) {
            log.error("Login error: ", e);
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("An unexpected error occurred");
        }
    }

    @PostMapping("/logout")
    public ResponseEntity<?> logout(HttpServletRequest request, HttpServletResponse response) {
        String username = SecurityContextHolder.getContext().getAuthentication().getName();
        // Refresh Token Redis 삭제
        refreshTokenService.deleteRefreshToken(username);
        SecurityContextHolder.clearContext();

        // Access Token 쿠키 삭제
        ResponseCookie cookie = ResponseCookie.from("accessToken", "")
                .httpOnly(true)
                .secure(true)
                .maxAge(0)
                .path("/")
                .build();
        response.addHeader(HttpHeaders.SET_COOKIE, cookie.toString());

        return ResponseEntity.ok("Logged out successfully");
    }

    @PostMapping("/refresh")
    public ResponseEntity<?> refreshToken(HttpServletRequest request, HttpServletResponse response) {
        String username = SecurityContextHolder.getContext().getAuthentication().getName();
        String storedRefreshToken = refreshTokenService.getRefreshToken(username);

        if (storedRefreshToken != null && jwtTokenProvider.validateToken(storedRefreshToken)) {
            CustomUserDetails userDetails = customUserDetailsService.loadUserByUsername(username);
            String newAccessToken = jwtTokenProvider.generateAccessToken(userDetails);

            // 새로운 Access Token을 쿠키에 저장
            addTokenToCookie(response, "accessToken", newAccessToken, (int) (jwtTokenProvider.getAccessTokenExpiration() / 1000));

            return ResponseEntity.ok().build();
        }

        return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("Invalid refresh token");
    }


    @GetMapping("/site/main")
    public String userMain() {
        return "/user/other/index";
    }

    @PostMapping("/site/chkId")
    @ResponseBody
    public ResponseEntity<Map<String, Object>> chkUserId(String id) {
        Map<String, Object> result = userLoginService.getUserCountById(id);

        if (result.containsKey("error")) {
            return ResponseEntity.badRequest().body(result);
        }

        return ResponseEntity.ok(result);
    }

    @PostMapping("/site/chkHp")
    @ResponseBody
    public ResponseEntity<Map<String, Object>> chkUserHp(String hp) {
        Map<String, Object> result = userLoginService.getUserCountByHp(hp);

        if (result.containsKey("error")) {
            return ResponseEntity.badRequest().body(result);
        }

        return ResponseEntity.ok(result);
    }

    private void addTokenToCookie(HttpServletResponse response, String name, String value, int maxAge) {
        ResponseCookie cookie = ResponseCookie.from(name, value)
                .httpOnly(true)
                .secure(true) // HTTPS에서만 사용
                .maxAge(maxAge)
                .path("/")
                .sameSite("Strict")
                .build();
        response.addHeader(HttpHeaders.SET_COOKIE, cookie.toString());
    }
}
