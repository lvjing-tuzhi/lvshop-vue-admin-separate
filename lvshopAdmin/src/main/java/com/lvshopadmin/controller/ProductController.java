package com.lvshopadmin.controller;

import com.lvshopadmin.entity.Result;
import com.lvshopadmin.entity.StatusCode;
import com.lvshopadmin.service.product.ProductService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

/**
 * @program: lvshopAdmin
 * @description: 产品详情控制层
 * @author: 兔子
 * @create: 2022-01-05 20:54
 **/

@RestController
@CrossOrigin
@RequestMapping("/product")
@Api(tags = "商品详情接口")
public class ProductController {

    @Autowired
    ProductService productService;

    @GetMapping()
    @ApiOperation("查询全部商品")
    public Result select() {
        return new Result(true, StatusCode.OK,"查询成功",productService.select());
    }

    @GetMapping("/{id}")
    @ApiOperation("根据id查询商品")
    @ApiImplicitParam(name = "id", value = "商品id")
    public Result selectById(@PathVariable("id") int id) {
        return new Result(true,StatusCode.OK,"查询成功",productService.selectById(id));
    }
}
