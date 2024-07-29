package standardhompage.admin.userMng.controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import standardhompage.admin.company.service.CompanyService;
import standardhompage.admin.userMng.service.UserMngService;
import standardhompage.dto.user.UserReq;
import standardhompage.dto.user.UserRes;

import java.security.Principal;
import java.util.HashMap;
import java.util.Map;

@Log4j2
@Controller
@RequestMapping("admin")
public class UserMngController {

    @Autowired
    private UserMngService userMngService;

    @Autowired
    private CompanyService companyService;

    // List
    @GetMapping("/userMng")
    public String userMng() {

        return "/admin/userMng";
    }

    @PostMapping("/searchUserMng")
    @ResponseBody
    public ResponseEntity<Map<String, Object>> searchUserMng(@RequestParam(name = "page", defaultValue = "1") Integer page,
                                                             @RequestParam(name = "pageSize", defaultValue = "20") Integer pageSize,
                                                             @RequestParam(name = "searchCate", required = false) String searchCate,
                                                             @RequestParam(name = "keyword", required = false) String keyword) {
        Map<String, Object> result = userMngService.getUserListPage(page, pageSize, searchCate, keyword);

        if (result.containsKey("error")) {
            return ResponseEntity.badRequest().body(result);
        }

        return ResponseEntity.ok(result);
    }


    @PostMapping("/deleteUserMng")
    @ResponseBody
    public ResponseEntity<Map<String, Object>> userMngDelete(@RequestParam(name="checkedValues") String checkedValues) {
        Map<String, Object> result = userMngService.deleteUserBySeq(checkedValues);

        if (result.containsKey("error")) {
            return ResponseEntity.badRequest().body(result);
        }

        return ResponseEntity.ok(result);
    }

    @PostMapping("/loginAsUser")
    @ResponseBody
    public ResponseEntity<Map<String, Object>> loginAsUser(@RequestParam(name = "userSeq") int userSeq, Principal principal) {
        Map<String, Object> result = userMngService.loginAsUser(userSeq);

        if (result.containsKey("error")) {
            return ResponseEntity.badRequest().body(result);
        }

        UserRes userRes = (UserRes) result.get("user");
/*        session.setAttribute("userId", userRes.getUser_id());
        session.setAttribute("userName", userRes.getUser_name());
        session.setAttribute("companyId", userRes.getCompany_id());
        session.setAttribute("companyName", userRes.getCompany_name());*/

        return ResponseEntity.ok(result);
    }

    // Register
    @GetMapping("/userMngRegister")
    public String userMngRegister(Model model, @RequestParam(name = "userSeq", required = false) Integer userSeq) {

        model.addAttribute("user", userMngService.getUserBySeq(userSeq));
        model.addAttribute("companyList", companyService.getCompanyList());

        return "/admin/userMngRegister";
    }

    @PostMapping("/insertUserMng")
    @ResponseBody
    public ResponseEntity<Map<String, Object>> insertUserMng(UserReq req, HttpServletRequest request) {
        Map<String, Object> result = userMngService.insertUser(req, request);

        if (result.containsKey("error")) {
            return ResponseEntity.badRequest().body(result);
        }

        return ResponseEntity.ok(result);
    }

    @PostMapping("/updateUserMng")
    @ResponseBody
    public ResponseEntity<Map<String, Object>> updateUserMng(UserReq req) {
        Map<String, Object> result = userMngService.updateUser(req);

        if (result.containsKey("error")) {
            return ResponseEntity.badRequest().body(result);
        }

        return ResponseEntity.ok(result);
    }

    @PostMapping("/chkUserId")
    @ResponseBody
    public ResponseEntity<Map<String, Object>> chkUserId(String id) {
        Map<String, Object> result = userMngService.getUserCountById(id);

        if (result.containsKey("error")) {
            return ResponseEntity.badRequest().body(result);
        }

        return ResponseEntity.ok(result);
    }

    @PostMapping("/chkUserHp")
    @ResponseBody
    public ResponseEntity<Map<String, Object>> chkUserHp(String hp) {
        Map<String, Object> result = userMngService.getUserCountByHp(hp);

        if (result.containsKey("error")) {
            return ResponseEntity.badRequest().body(result);
        }

        return ResponseEntity.ok(result);
    }
}
