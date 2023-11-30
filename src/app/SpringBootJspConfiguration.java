package app;

//import org.springframework.boot.autoconfigure.web.servlet.WebMvcAutoConfiguration;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
//public class SpringBootJspConfiguration extends WebMvcAutoConfiguration {
public class SpringBootJspConfiguration implements WebMvcConfigurer {
	
	@Override
    public void addInterceptors(InterceptorRegistry registry) {
        //registry.addInterceptor(new AutorizacaoInterceptor());
	}
}