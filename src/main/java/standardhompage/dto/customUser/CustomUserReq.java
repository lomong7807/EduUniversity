package standardhompage.dto.customUser;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class CustomUserReq {

    private String id;
    private String name;
    private String pw;
    private int role_seq;
    private int companySeq;
    private String companyId;
    private String companyName;

    // Method to convert roleId to LoginType enum
    public UserType getRole() {
        return switch (role_seq) {
            case 1 -> UserType.USER;
            case 2 -> UserType.ADMIN_GEN;
            case 3 -> UserType.ADMIN_SYS;
            case 4 -> UserType.ADMIN_INST;
            default ->
                // Default to a sensible value if roleId doesn't match any enum
                    UserType.USER; // Or throw an exception or handle differently
        };
    }
}
