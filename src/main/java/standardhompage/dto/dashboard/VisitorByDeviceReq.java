package standardhompage.dto.dashboard;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class VisitorByDeviceReq {

    private String deviceType;
    private int visitCount;
}
