package com.example.demo.config;

import com.example.demo.interceptor.LoginInterceptor;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebMvcConfig implements WebMvcConfigurer {

    // 设置欢迎页面
    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController("/").setViewName("forward:/animal/index.jsp");
    }

    // 设置图片映射路径
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/catPic/*").addResourceLocations("file:C:/Users/admin/Pictures/catPic/");
//        registry.addResourceHandler("/catPic/*").addResourceLocations("file:/C:/Users/admin/Pictures/catPic/");
    }
}