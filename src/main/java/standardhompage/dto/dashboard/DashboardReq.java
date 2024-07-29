package standardhompage.dto.dashboard;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class DashboardReq {

    private VisitorRatioReq visitorsRatio;
    private RegUserCountReq regUserCount;
    private RegUserCountWeeklyReq regUserCountWeekly;
}
