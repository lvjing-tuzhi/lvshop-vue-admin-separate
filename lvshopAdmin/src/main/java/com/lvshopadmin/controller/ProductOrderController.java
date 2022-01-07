package com.lvshopadmin.controller;

import com.lvshopadmin.entity.Result;
import com.lvshopadmin.entity.StatusCode;
import com.lvshopadmin.service.productorder.ProductOrderService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * @program: lvshopAdmin
 * @description: 商品订单控制层
 * @author: 兔子
 * @create: 2022-01-07 13:55
 **/

@RestController
@RequestMapping("/order")
@Api(tags = "商品订单接口")
@CrossOrigin
public class ProductOrderController {

    @Autowired
    ProductOrderService productOrderService;

    @GetMapping("/userJudge/{productId}")
    @ApiOperation("按商品id查询所有评价")
    @ApiImplicitParam(name = "productId", value = "商品id")
    public Result selectUserJudge(@PathVariable("productId") int productId) {
        return new Result(true, StatusCode.OK,"查询成功",productOrderService.selectJudgeByPid(productId));
    }
}
