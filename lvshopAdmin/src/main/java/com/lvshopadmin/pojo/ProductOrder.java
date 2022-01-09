package com.lvshopadmin.pojo;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.annotations.ApiOperation;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

/**
 * @program: lvshopAdmin
 * @description: 订单实体类
 * @author: 兔子
 * @create: 2022-01-07 10:39
 **/

@Data
@AllArgsConstructor
@NoArgsConstructor
@ApiModel("订单实体类")
public class ProductOrder {
    @ApiModelProperty("订单实id")
    private int id;
    @ApiModelProperty("订单名字")
    private String name;
    @ApiModelProperty("订单价格")
    private BigDecimal price;
    @ApiModelProperty("商品颜色")
    private String color;
    @ApiModelProperty("商品尺寸")
    private String size;
    @ApiModelProperty("商品是否支付,-1购物车,0未支付，1支付")
    private String isPay;
    @ApiModelProperty("userId")
    private int userId;
    @ApiModelProperty("商品id")
    private int productId;
    @ApiModelProperty("评价")
    private String judge;
}
