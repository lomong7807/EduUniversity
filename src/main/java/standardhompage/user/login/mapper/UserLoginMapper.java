package standardhompage.user.login.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import standardhompage.dto.customUser.CustomUserReq;
import standardhompage.dto.user.UserReq;
import standardhompage.dto.user.UserRes;

@Mapper
public interface UserLoginMapper {

    public boolean insertUser(UserReq req);
    public UserRes getUserById(String id);
    public int getUserCountByHp(@Param("user_hp") String user_hp);
    public int getUserCountById(@Param("user_id") String user_id);
}
