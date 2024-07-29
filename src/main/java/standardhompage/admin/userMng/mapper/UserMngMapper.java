package standardhompage.admin.userMng.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import standardhompage.dto.user.UserReq;
import standardhompage.dto.user.UserRes;

import java.time.LocalDateTime;
import java.util.List;

@Mapper
public interface UserMngMapper {

    public UserRes selectUserBySeq(@Param("user_seq") int user_seq);
    public List<UserRes> getUserListPage(@Param("pageSize") int pageSize,
                                         @Param("offset") int offset,
                                         @Param("searchCate") String searchCate,
                                         @Param("keyword") String keyword);
    public List<UserRes> getUserList(@Param("startDate") String startDate,
                                     @Param("endDate") String endDate,
                                     @Param("searchCate") String searchCate,
                                     @Param("keyword") String keyword);
    int getUserListPageCount(@Param("searchCate") String searchCate,
                         @Param("keyword") String keyword);
    int getUserListCount(@Param("startDate") String startDate,
                         @Param("endDate") String endDate,
                         @Param("searchCate") String searchCate,
                         @Param("keyword") String keyword);
    public int insertUser(UserReq req);
    public int updateUser(UserReq req);
    public int deleteUserBySeq(@Param("user_seq") int user_seq);
    public int getUserCountByHp(@Param("user_hp") String user_hp);
    public int getUserCountById(@Param("user_id") String user_id);
}
