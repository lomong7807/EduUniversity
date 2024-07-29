package standardhompage.dto.customUser;

import lombok.Getter;

@Getter
public enum UserType {

    USER("ROLE_USER"),
    ADMIN_GEN("ROLE_ADMIN_GEN"),
    ADMIN_SYS("ROLE_ADMIN_SYS"),
    ADMIN_INST("ROLE_ADMIN_INST");

    private final String role;

    UserType(String role){
        this.role = role;
    }

    public String getRole(){
        return role;
    }

}
