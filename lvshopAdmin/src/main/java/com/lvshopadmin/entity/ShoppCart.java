package com.lvshopadmin.entity;

import com.lvshopadmin.pojo.Product;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

/**
 * @program: lvshopAdmin
 * @description: 购物车实体类
 * @author: 兔子
 * @create: 2022-01-08 17:12
 **/

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ShoppCart {
    @ApiModelProperty("订单实体类")
    private int id;
    @ApiModelProperty("订单名字")
    private String name;
    @ApiModelProperty("订单价格")
    private BigDecimal price;
    @ApiModelProperty("商品颜色")
    private String color;
    @ApiModelProperty("商品尺寸")
    private String size;
    @ApiModelProperty("userId")
    private int userId;
    @ApiModelProperty("商品类")
    private Product product;
}
