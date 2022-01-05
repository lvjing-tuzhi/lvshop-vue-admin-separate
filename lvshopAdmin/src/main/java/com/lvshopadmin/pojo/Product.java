package com.lvshopadmin.pojo;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

/**
 * @program: lvshopAdmin
 * @description: 商品类
 * @author: 兔子
 * @create: 2022-01-04 17:09
 **/

@Data
@AllArgsConstructor
@NoArgsConstructor
@ApiModel("商品实体类")
public class Product {
    @ApiModelProperty("商品id")
    private int id;
    @ApiModelProperty("商品名称")
    private String name;
    @ApiModelProperty("商品价格")
    private BigDecimal price;
    @ApiModelProperty("商品最大价格")
    private BigDecimal maxPrice;
    @ApiModelProperty("商品最小价格")
    private BigDecimal minPrice;
    @ApiModelProperty("商品封面图")
    private String covers;
    @ApiModelProperty("商品详情图")
    private String photo;
    @ApiModelProperty("商品标题")
    private String title;
    @ApiModelProperty("商品描述")
    private String describt;
    @ApiModelProperty("商品销售数量")
    private String sales;
    @ApiModelProperty("商品收藏数量")
    private String collect;
    @ApiModelProperty("发货时间")
    private String sendTime;
    @ApiModelProperty("商品分类id")
    private int categoryId;
    @ApiModelProperty("商品的保证id")
    private int guaranteeId;
    @ApiModelProperty("商品推荐类型,fashion:时尚；new：新款；selected：精选；hot：热门")
    private String recommendType;
    @ApiModelProperty("链接")
    private String link;
}
