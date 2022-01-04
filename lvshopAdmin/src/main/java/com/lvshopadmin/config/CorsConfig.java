package com.lvshopadmin.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * @program: lvshopAdmin
 * @description: 跨域资源配置
 * @author: 兔子
 * @create: 2022-01-04 09:55
 **/

//@Configuration
//@EnableWebMvc
//public class CorsConfig implements WebMvcConfigurer {
//    @Override
//    public void addCorsMappings(CorsRegistry registry) {
//        registry.addMapping("/**").
//                allowedOrigins("http://127.0.0.1:8081").
//                allowedMethods("GET", "HEAD", "POST","PUT", "DELETE", "OPTIONS").
//                allowedHeaders("Content-Type","Access-Control-Allow-Headers","Authorization","X-Requested-With").
//                allowCredentials(true);
//    }
//}
