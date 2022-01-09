package com.lvshopadmin.controller;

import com.lvshopadmin.entity.Result;
import com.lvshopadmin.entity.StatusCode;
import com.lvshopadmin.pojo.ProductOrder;
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

    @PostMapping("")
    @ApiOperation("增加订单，isPay：-1是购物车，0是未支付，1是支付")
    public Result add(@RequestBody ProductOrder productOrder) {
        int add = productOrderService.add(productOrder);
        if (add > 0) {
            return new Result(true,StatusCode.OK,"添加成功");
        }else {
            return new Result(true,StatusCode.OK,"添加失败");
        }
    }

    @GetMapping("/shopCart/{userId}")
    @ApiOperation("按用户id查询订单")
    @ApiImplicitParam(name = "userId", value = "用户id")
    public Result selectShopCart(@PathVariable("userId") int userId) {
        return new Result(true,StatusCode.OK,"查询成功",productOrderService.selectShoppCart(userId));
    }

    @PutMapping("")
    @ApiOperation("按订单id修改订单")
    public Result update(@RequestBody ProductOrder productOrder) {
        System.err.println(productOrder);
        int update = productOrderService.update(productOrder);
        if (update > 0) {
            return new Result(true,StatusCode.OK,"更新成功");
        }else {
            return new Result(true,StatusCode.OK,"更新失败");
        }
    }

}
