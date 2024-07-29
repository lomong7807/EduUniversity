package standardhompage.comnUtil;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebMvcConfig implements WebMvcConfigurer {
	
	@Value("${DOMAIN_PATH}")
	private String imagePath;
	

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {

        registry.addResourceHandler("/upload/images/banner/**")
                .addResourceLocations("file:///" + imagePath + "/upload/images/banner/");
        registry.addResourceHandler("/upload/images/popup/**")
                .addResourceLocations("file:///" + imagePath + "/upload/images/popup/");
        registry.addResourceHandler("/upload/images/board/**")
                .addResourceLocations("file:///" + imagePath + "/upload/images/board/");
    }
}