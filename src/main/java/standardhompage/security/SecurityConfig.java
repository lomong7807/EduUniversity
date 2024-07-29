package standardhompage.security;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.security.web.context.SecurityContextPersistenceFilter;
import org.springframework.security.web.firewall.HttpFirewall;
import org.springframework.security.web.firewall.StrictHttpFirewall;
import standardhompage.jwt.JwtAuthenticationFilter;

@Log4j2
@Configuration
@EnableWebSecurity
@RequiredArgsConstructor
public class SecurityConfig{

    private final CustomUserDetailsService userDetailsService;
    private final CustomAccessDeniedHandler accessDeniedHandler;
    private final CustomLogoutHandler logoutHandler;
    private final CustomAuthenticationEntryPoint authenticationEntryPoint;
    private final JwtAuthenticationFilter jwtAuthenticationFilter;

    private static final String[] AUTH_WHITELIST = {
            "/WEB-INF/view/**",
            "/error/**", "/", "/css/**", "/js/**", "/img/**", "/lib/**", "/favicon.ico", "/fonts/**",
            "/site/main", "/site/logout", "/site/getHeader", "/site/chkHp", "/site/chkId", "/site/registerUser",
            "/site/getSideBar", "/site/js/**",
            "/login",
            "/admin/login", "/admin/logout"
    };

    @Bean
    public HttpFirewall allowUrlEncodedSlashHttpFirewall() {
        StrictHttpFirewall firewall = new StrictHttpFirewall();
        firewall.setAllowUrlEncodedSlash(true);
        firewall.setAllowUrlEncodedDoubleSlash(true);  // 추가: //를 허용하기 위해
        return firewall;
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }


    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        log.info("=====================Security Config Initializing====================");

        http
                .csrf(AbstractHttpConfigurer::disable)
                .cors(Customizer.withDefaults())
                .formLogin(AbstractHttpConfigurer::disable)  // 기본 폼 로그인 비활성화
                .rememberMe(rememberMe -> rememberMe
                        .key("uniqueAndSecret") // Remember Me 쿠키를 암호화하는 데 사용할 키
                        .tokenValiditySeconds(86400) // 토큰 유효 기간: 1일
                        .rememberMeParameter("remember-me") // 체크박스 파라미터 이름
                        .userDetailsService(userDetailsService))
                .logout(logout -> logout
                        .logoutUrl("/site/logout")  // 로그아웃 URL 설정
                        .addLogoutHandler(logoutHandler)
                        .logoutSuccessUrl("/site/main")
                        .invalidateHttpSession(true)
                        .clearAuthentication(true)
                        .deleteCookies("JSESSIONID")
                        .permitAll())
                .authorizeHttpRequests(authz -> authz
                        .requestMatchers("/site/login", "/site/register", "/site/find-account").anonymous()
                        .requestMatchers(AUTH_WHITELIST).permitAll()
                        .requestMatchers("/admin/**").hasAnyRole("ADMIN_GEN", "ADMIN_SYS", "ADMIN_INST")
                        .requestMatchers("/site/**").hasAnyRole("USER", "ADMIN_GEN", "ADMIN_SYS", "ADMIN_INST")  // 추가: USER 역할에 대한 접근 권한
                        /*.requestMatchers("/admin/**").permitAll()
                        .requestMatchers("/site/**").permitAll()*/
                        .anyRequest().authenticated()
                )
                .exceptionHandling(exceptionHandling -> exceptionHandling
                        .authenticationEntryPoint((request, response, authException) ->
                                response.sendRedirect("/user/login"))  // 인증되지 않은 사용자 리다이렉트
                )
                .sessionManagement(session -> session
                        .sessionCreationPolicy(SessionCreationPolicy.STATELESS)
                )
                .addFilterBefore(jwtAuthenticationFilter, UsernamePasswordAuthenticationFilter.class)
                .addFilterAfter(new RateLimitFilter(), UsernamePasswordAuthenticationFilter.class)
                .exceptionHandling(exception -> exception
                        .authenticationEntryPoint(authenticationEntryPoint)
                        .accessDeniedHandler(accessDeniedHandler));

        http.userDetailsService(userDetailsService);

        log.info("=====================Security Config Initialized====================");

        return http.build();
    }


}
