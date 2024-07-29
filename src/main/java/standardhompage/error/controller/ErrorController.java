package standardhompage.error.controller;

import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Log4j2
@Controller("error")
public class ErrorController {

    @GetMapping("/error/401")
    public String getError401() {
        return "/error/401";
    }

    @GetMapping("/error/404")
    public String getError404() {
        return "/error/404";
    }

    @GetMapping("/error/429")
    public String getError429() {
        return "/error/429";
    }
}
