package standardhompage.user.userLog;

import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.log4j.Log4j2;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import standardhompage.comnUtil.BaseLogAop;
import standardhompage.comnUtil.LoggingUtil;
import standardhompage.dto.adminLog.AdminLogReq;
import standardhompage.dto.userLog.UserLogReq;
import standardhompage.security.CustomUserDetails;
import standardhompage.user.userLog.service.UserLogService;

import java.lang.reflect.Field;
import java.lang.reflect.Parameter;
import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.Map;

@Log4j2
@Aspect
@Component
public class UserLogAop extends BaseLogAop {

    @Autowired
    private HttpServletRequest request;

    @Autowired
    private UserLogService userLogService;

    @Pointcut("@annotation(org.springframework.web.bind.annotation.GetMapping) " +
            "&& execution(* standardhompage.user..*.*(..)) " +
            "&& !execution(public * get*(..))")
    public void userGetMappingMethods() {}

    @Pointcut("@annotation(org.springframework.web.bind.annotation.PostMapping) && execution(* standardhompage.user..*.*(..))")
    public void userPostMappingMethods() {}

    @Pointcut("execution(public * *insert*(..)) || execution(public * *Insert*(..))")
    public void insertMethods() {}

    @Pointcut("execution(public * *update*(..)) || execution(public * *Update*(..))")
    public void updateMethods() {}

    @Pointcut("execution(public * *delete*(..)) || execution(public * *Delete*(..))")
    public void deleteMethods() {}

    @Pointcut("execution(public * *register*(..))")
    public void registerMethods() {}

    @Pointcut("execution(public * *login*(..))")
    public void loginMethods() {}


    @After("userGetMappingMethods()")
    public void viewLog(JoinPoint joinPoint) {
        Map<String, Object> params = LoggingUtil.getMethodParams(joinPoint);
        logAction(joinPoint, "view", params, request);
    }

    @After("userPostMappingMethods() && insertMethods()")
    public void insertLog(JoinPoint joinPoint) {
        Map<String, Object> params = LoggingUtil.getMethodParams(joinPoint);
        logAction(joinPoint, "insert", params, request);
    }

    @After("userPostMappingMethods() && updateMethods()")
    public void updateLog(JoinPoint joinPoint) {
        Map<String, Object> params = LoggingUtil.getMethodParams(joinPoint);
        logAction(joinPoint, "update", params, request);
    }

    @After("userPostMappingMethods() && deleteMethods()")
    public void deleteLog(JoinPoint joinPoint) {
        Map<String, Object> params = LoggingUtil.getMethodParams(joinPoint);
        logAction(joinPoint, "delete", params, request);
    }

    @After("userPostMappingMethods() && registerMethods()")
    public void registerLog(JoinPoint joinPoint) {
        Map<String, Object> params = LoggingUtil.getMethodParams(joinPoint);
        logAction(joinPoint, "register", params, request);
    }

    @After("userPostMappingMethods() && loginMethods()")
    public void loginLog(JoinPoint joinPoint) {
        Map<String, Object> params = LoggingUtil.getMethodParams(joinPoint);
        logAction(joinPoint, "login", params, request);
    }

    @Override
    protected void insertLog(Object logReq) {
        if (logReq instanceof UserLogReq) {
            userLogService.insertUserLog((UserLogReq) logReq);
        } else {
            log.error("Invalid log request type: {}", logReq.getClass().getName());
            throw new IllegalArgumentException("Invalid log request type");
        }
    }

    @Override
    protected Object createLogReq(String action, String userId, LocalDateTime currentTime, Map<String, Object> params, HttpServletRequest request) {
        UserLogReq req = new UserLogReq();
        req.setJob_name(action);
        req.setWrite_ip(request.getRemoteAddr());
        req.setJob_url(request.getRequestURI());
        req.setWrite_id(userId);
        log.error(request.getSession().getId());
        log.error(LoggingUtil.sanitizeUserAgent(request.getHeader("User-Agent")));
        req.setSession_id(request.getSession().getId());
        req.setUser_agent(LoggingUtil.sanitizeUserAgent(request.getHeader("User-Agent")));
        req.setWrite_time(currentTime);
        req.setForm_value(params.toString());
        return req;
    }

}
