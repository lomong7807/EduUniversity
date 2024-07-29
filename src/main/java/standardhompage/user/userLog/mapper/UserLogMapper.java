package standardhompage.user.userLog.mapper;

import org.apache.ibatis.annotations.Mapper;
import standardhompage.dto.userLog.UserLogReq;

@Mapper
public interface UserLogMapper {

    public void insertUserLog(UserLogReq log);


}
