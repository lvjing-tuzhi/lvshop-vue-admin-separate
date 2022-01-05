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
@CrossOrigin
public class HomeController {

    @Autowired
    HomeService homeService;

    @GetMapping("/week")
    @ApiOperation("查询本周推荐商品")
    public Result selectWeek() {
        return new Result(true,StatusCode.OK,"查询成功",homeService.selectWeek());
    }

    @PostMapping("/goods")
    @ApiOperation("按类型分页查询商品")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "type", value = "商品推荐类型,流行：pop。新款：new。精选：sell。本周推荐：week。"),
            @ApiImplicitParam(name = "page", value = "页数"),
            @ApiImplicitParam(name = "size", value = "每页数量")
    })
    public Result selectTypePage(String type, int page, int size) {
        return new Result(true,StatusCode.OK,"查询成功",homeService.selectTypePage(type,page,size));
    }

}
