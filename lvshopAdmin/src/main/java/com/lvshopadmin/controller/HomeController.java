package com.lvshopadmin.controller;

import com.lvshopadmin.entity.Result;
import com.lvshopadmin.entity.StatusCode;
import com.lvshopadmin.pojo.File;
import com.lvshopadmin.service.home.HomeService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @program: lvshopAdmin
 * @description: 首页接口
 * @author: 兔子
 * @create: 2022-01-03 11:37
 **/

@RestController
@RequestMapping("/home")
@Api(tags = {"首页接口"})
public class HomeController {

    @Autowired
    HomeService homeService;


}
