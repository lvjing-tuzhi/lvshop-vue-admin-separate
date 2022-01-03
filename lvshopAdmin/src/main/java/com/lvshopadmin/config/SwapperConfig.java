package com.lvshopadmin.config;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiOperation;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.service.VendorExtension;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

import java.util.ArrayList;

/**
 * @program: lvshopAdmin
 * @description:接口文档配置类
 * @author: 兔子
 * @create: 2022-01-03 18:03
 **/

@Configuration
@EnableSwagger2  //开启Swagger2
public class SwapperConfig {

    //配置Swapper的Docket的bean实例
    @Bean
    public Docket docket() {
//        获取到当前是生产环境还是发布环境，从而来进行自动的改变swapper配置
        return new Docket(DocumentationType.SWAGGER_2)
                .apiInfo(apiInfo())
                .select()
//                RequestHandlerSelectors:
//                    basePackage 指定要扫描的包
//                    any() 扫描全部
//                    none() 不扫描
//                    withClassAnnotation 扫描类上的注解，参数是一个注解的放射对象，annocation.class
//                    withMethodAnnotation 扫描方法上的注解
//                .apis(RequestHandlerSelectors.basePackage("com.lvshopadmin.controller"))
                //这种更灵活，只要用ApiOperation注解就可以
                .apis(RequestHandlerSelectors.withMethodAnnotation(ApiOperation.class))
                .paths(PathSelectors.any())//过滤路径
                .build();
    }

    //    配置Swapper信息
    public ApiInfo apiInfo() {
        // 用ApiInfoBuilder进行定制
        return new ApiInfoBuilder()
                // 设置标题
                .title("vue商城接口")
                // 描述
                .description("vue商城接口")
                // 作者信息
                .contact(new Contact("兔子", null, null))
                // 版本
                .version("版本号:1")
                .build();
    }

}
