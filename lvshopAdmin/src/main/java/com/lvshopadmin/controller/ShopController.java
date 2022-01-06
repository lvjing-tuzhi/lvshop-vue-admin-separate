package com.lvshopadmin.controller;

import com.lvshopadmin.entity.Result;
import com.lvshopadmin.entity.StatusCode;
import com.lvshopadmin.service.shop.ShopService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @program: lvshopAdmin
 * @description: 商城控制层
 * @author: 兔子
 * @create: 2022-01-06 18:51
 **/

@RestController
@Api(tags = "商城 接口")
@RequestMapping("/shop")
public class ShopController {

    @Autowired
    ShopService shopService;

    @GetMapping()
    @ApiOperation("查询所有店铺")
    public Result select() {
        return new Result(true, StatusCode.OK,"查询成功",shopService.select());
    }

    @GetMapping("/{id}")
    @ApiOperation("按id查询店铺")
    @ApiImplicitParam(name = "id", value = "店铺id")
    public Result selectById(@PathVariable("id") int id) {
        return new Result(true,StatusCode.OK,"查询成功",shopService.selectById(id));
    }

}
