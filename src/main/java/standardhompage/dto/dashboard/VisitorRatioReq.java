package standardhompage.dto.dashboard;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class VisitorRatioReq {

    private int userCount;
    private int unknownCount;
}
