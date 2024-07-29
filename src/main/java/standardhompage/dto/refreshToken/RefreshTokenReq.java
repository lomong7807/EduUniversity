package standardhompage.dto.refreshToken;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class RefreshTokenReq {

    private int id;
    private String user_id;
    private int role_seq;
    private long token;
    private String expiry_date;
}
