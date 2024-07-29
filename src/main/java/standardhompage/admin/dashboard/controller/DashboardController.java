package standardhompage.admin.dashboard.controller;

import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RestController;
import standardhompage.admin.dashboard.service.DashboardService;

@Log4j2
@RestController("dashboard")
public class DashboardController {

    @Autowired
    private DashboardService dashboardService;


}
