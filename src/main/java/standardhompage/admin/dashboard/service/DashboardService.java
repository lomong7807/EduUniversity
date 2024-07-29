package standardhompage.admin.dashboard.service;

import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import standardhompage.admin.dashboard.mapper.DashboardMapper;
import standardhompage.dto.dashboard.*;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.stream.Collectors;

@Log4j2
@Service
public class DashboardService {

    @Autowired
    DashboardMapper dashboardMapper;

    // 회원 비회원 방문 비율
    public VisitorRatioReq getVisitorRatio() {

        VisitorRatioReq visitorRatioReq = new VisitorRatioReq();

        try{
            visitorRatioReq = dashboardMapper.getVisitorRatio();
        }catch (Exception e){

        }

        return visitorRatioReq;
    }

    // 회원 가입 수
    public RegUserCountReq getRegUserCount() {

        RegUserCountReq regUserCountReq = new RegUserCountReq();

        try{
            regUserCountReq = dashboardMapper.getRegUserCount();
        }catch (Exception e){

        }

        return regUserCountReq;
    }

    // 최근 7일 동안의 회원 가입 수
    public RegUserCountWeeklyReq getRegUserCountWeekly() {

        DateTimeFormatter targetFormatter = DateTimeFormatter.ofPattern("yy.MM.dd");
        RegUserCountWeeklyReq regUserCountReqWeekly = new RegUserCountWeeklyReq();
        LocalDate today = LocalDate.now();
        LocalDate sevenDaysAgo = today.minusDays(7);

        try{
            regUserCountReqWeekly = dashboardMapper.getRegUserCountWeekly();
            regUserCountReqWeekly.setTodayDate(today.format(targetFormatter));
            regUserCountReqWeekly.setSevenDaysAgoDate(sevenDaysAgo.format(targetFormatter));
        }catch (Exception e){

        }

        return regUserCountReqWeekly;
    }

    // 방문자 브라우저
    public List<VisitorByBrowserReq> getVisitorByBrowser() {

        List<VisitorByBrowserReq> visitorByBrowserReq = dashboardMapper.getVisitorByBrowser();
        log.error(visitorByBrowserReq.toString());

        return visitorByBrowserReq;
    }

    // 기기장치별 방문수
    public List<VisitorByDeviceReq> getVisitorByDevice() {

        List<VisitorByDeviceReq> visitorByDeviceReq = dashboardMapper.getVisitorByDevice();
        log.error(visitorByDeviceReq.toString());

        return visitorByDeviceReq;
    }

    // 기기장치별 최근 3일간 방문수
    public List<VisitorByDeviceDailyReq> getVisitorByDeviceDaily() {

        LocalDate endDate = LocalDate.now();
        LocalDate startDate = endDate.minusDays(3);

        List<String> dates = startDate.datesUntil(endDate.plusDays(1))
                .map(date -> date.format(DateTimeFormatter.ISO_DATE))
                .toList();

        List<VisitorByDeviceDailyReq> visitorByDeviceDailyReq = dashboardMapper.getVisitorByDeviceDaily();
        log.error("visitorByDeviceDaily================================");
        log.error(visitorByDeviceDailyReq.toString());
        log.error("visitorByDeviceDaily================================");

        return visitorByDeviceDailyReq;
    }

    public List<VisitorByHourlyReq> getVisitorByHourlyYesterday() {

        List<VisitorByHourlyReq> visitorByHourlyReq = dashboardMapper.getVisitorByHourlyYesterday();
        log.error("visitorByDeviceDaily================================");
        log.error(visitorByHourlyReq.toString());
        log.error("visitorByDeviceDaily================================");

        return visitorByHourlyReq;
    }

    // 금일 접속한 총 방문수
    public int getVisitorByToday() {

        return dashboardMapper.getVisitorByToday();
    }

}
