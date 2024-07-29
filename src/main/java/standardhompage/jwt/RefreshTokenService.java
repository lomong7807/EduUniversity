package standardhompage.jwt;

import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import java.util.concurrent.TimeUnit;

@Service
@RequiredArgsConstructor
public class RefreshTokenService {

    private final RedisTemplate<String, String> refreshTokenRedisTemplate;
    private final JwtTokenProvider jwtTokenProvider;

    @Value("${jwt.refreshTokenExpiration}")
    private  long refreshTokenExpiration;

    public void saveRefreshToken(String username, String refreshToken) {
        refreshTokenRedisTemplate.opsForValue().set(
                "RT:" + username,
                refreshToken,
                refreshTokenExpiration,
                TimeUnit.MILLISECONDS
        );
    }

    public String getRefreshToken(String username) {
        return refreshTokenRedisTemplate.opsForValue().get("RT:" + username);
    }

    public boolean validateRefreshToken(String username, String refreshToken) {
        String storedToken = getRefreshToken(username);
        return storedToken != null && storedToken.equals(refreshToken)
                && jwtTokenProvider.validateToken(refreshToken)
                && !isRefreshTokenExpired(username);
    }

    public void deleteRefreshToken(String username) {
        refreshTokenRedisTemplate.delete("RT:" + username);
    }

    public boolean isRefreshTokenExpired(String username) {
        Long expiration = refreshTokenRedisTemplate.getExpire("RT:" + username, TimeUnit.MILLISECONDS);
        return expiration != null && expiration < 0;
    }
}
