package standardhompage.dto.dashboard;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class VisitorByDeviceDailyReq {

    private String deviceType;
    private int visitCount;
    private String visitDate;
}
