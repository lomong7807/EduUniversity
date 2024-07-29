package standardhompage.dto.dashboard;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class RegUserCountReq {

    private int today;
    private int yesterday;
    private int lastWeek;
    private int lastMonth;
    private int lastSixMonth;
    private int total;

}
