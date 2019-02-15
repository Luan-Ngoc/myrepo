package example.staveware.simplempa.config;

import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.context.web.SpringBootServletInitializer;

import example.staveware.simplempa.Application;

public class ApplicationBuilderConfig extends SpringBootServletInitializer {

    @Override
    protected SpringApplicationBuilder
        configure(SpringApplicationBuilder application) {
        return application.sources(Application.class);
    }
}
