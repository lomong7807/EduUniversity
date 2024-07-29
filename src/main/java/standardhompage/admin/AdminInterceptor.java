/*
 * package standardhompage.admin;
 * 
 * import java.util.Arrays; import java.util.Map;
 * 
 * import org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.web.servlet.HandlerInterceptor;
 * 
 * import jakarta.servlet.http.HttpServletRequest; import
 * jakarta.servlet.http.HttpServletResponse; import
 * standardhompage.admin.adminLog.service.AdminLogService; import
 * standardhompage.dto.adminLog.AdminLogReq;
 * 
 * public class AdminInterceptor implements HandlerInterceptor {
 * 
 * @Autowired AdminLogService adminLogService;
 * 
 * @Override public boolean preHandle(HttpServletRequest request,
 * HttpServletResponse response, Object handler) throws Exception { return
 * HandlerInterceptor.super.preHandle(request, response, handler); }
 * 
 * }
 * 
 * private void log(HttpServletRequest request) { AdminLogReq adminlog = new
 * AdminLogReq(); adminlog.setJob_name("GET"); String ipAddr =
 * request.getHeader("X-Forwarded-For"); if (ipAddr != null && ipAddr.length() >
 * 0) { String[] ipAddresses = ipAddr.split(","); ipAddr =
 * ipAddresses[ipAddresses.length - 1]; } else { ipAddr =
 * request.getRemoteAddr(); } adminlog.setWrite_ip(ipAddr); // Extract form data
 * using `getParameterMap()` Map<String, String[]> parameterMap =
 * request.getParameterMap(); // Build a log message with extracted form data if
 * ("POST".equals(request.getMethod())) { adminlog.setJob_name("POST");
 * System.out.println(parameterMap); StringBuilder logMessage = new
 * StringBuilder("User Activity Log: "); for (Map.Entry<String, String[]> entry
 * : parameterMap.entrySet()) {
 * logMessage.append(entry.getKey()).append(": ").append(Arrays.toString(entry.
 * getValue())).append(", "); }
 * adminlog.setForm_value(String.valueOf(logMessage));
 * System.out.println(logMessage); }
 * adminlog.setJob_url(request.getRequestURI()); if
 * (request.getSession().getAttribute("userId") != null &&
 * !request.getSession().getAttribute("userId").equals("")) {
 * adminlog.setWrite_id((String) request.getSession().getAttribute("userId")); }
 * adminLogService.log(adminlog); System.out.println("ipAddr : " + ipAddr);
 * System.out.println("requestURI : " + request.getRequestURI());
 * 
 * }
 */