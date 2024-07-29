package standardhompage;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;

@EnableCaching
@SpringBootApplication
public class StandardHompageApplication {

    public static void main(String[] args) {
        SpringApplication.run(StandardHompageApplication.class, args);
    }

}
