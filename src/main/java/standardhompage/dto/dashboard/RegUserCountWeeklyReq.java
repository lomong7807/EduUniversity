package standardhompage.dto.dashboard;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class RegUserCountWeeklyReq {

    private int today;
    private int oneDayAgo;
    private int twoDaysAgo;
    private int threeDaysAgo;
    private int fourDaysAgo;
    private int fiveDaysAgo;
    private int sixDaysAgo;
    private int sevenDaysAgo;
    private String todayDate;
    private String sevenDaysAgoDate;

}
