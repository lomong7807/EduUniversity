package standardhompage.admin.dashboard.mapper;

import org.apache.ibatis.annotations.Mapper;
import standardhompage.dto.dashboard.*;

import java.util.List;

@Mapper
public interface DashboardMapper {

    public VisitorRatioReq getVisitorRatio();
    public int getVisitorByToday();
    public List<VisitorByBrowserReq> getVisitorByBrowser();
    public List<VisitorByDeviceReq> getVisitorByDevice();
    public List<VisitorByDeviceDailyReq> getVisitorByDeviceDaily();
    public RegUserCountReq getRegUserCount();
    public RegUserCountWeeklyReq getRegUserCountWeekly();
    public List<VisitorByHourlyReq> getVisitorByHourlyYesterday();


}
