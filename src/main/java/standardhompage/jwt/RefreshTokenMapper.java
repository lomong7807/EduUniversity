package standardhompage.jwt;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import standardhompage.dto.refreshToken.RefreshTokenReq;
import standardhompage.dto.refreshToken.RefreshTokenRes;

@Mapper
public interface RefreshTokenMapper {


    int insertToken(RefreshTokenReq refreshToken);

    RefreshTokenRes findByToken(String token);

    RefreshTokenRes findByUserId(String userId);

    int updateIsActiveUserId(@Param("userId")  String userId, @Param("isActive") boolean isActive);

    int deleteByUserId(String userId);
}
