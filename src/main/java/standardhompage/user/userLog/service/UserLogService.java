package standardhompage.user.userLog.service;

import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import standardhompage.dto.userLog.UserLogReq;
import standardhompage.user.userLog.mapper.UserLogMapper;

@Log4j2
@Service
public class UserLogService {

    @Autowired
    UserLogMapper userLogMapper;

    public void insertUserLog(UserLogReq req){

        try{
            userLogMapper.insertUserLog(req);
        }catch (Exception e){
            log.error("Exception [userLogService.insertUserLog] : {}", e.getStackTrace()[0]);
            throw new RuntimeException(e);
        }
    }







}
