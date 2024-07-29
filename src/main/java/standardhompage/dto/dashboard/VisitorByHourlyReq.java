package standardhompage.dto.dashboard;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class VisitorByHourlyReq {

    private int hour;
    private int visitCount;
}
