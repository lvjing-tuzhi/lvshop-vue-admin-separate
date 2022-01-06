package com.lvshopadmin.pojo;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @program: lvshopAdmin
 * @description: 店铺实体类
 * @author: 兔子
 * @create: 2022-01-06 18:42
 **/

@Data
@AllArgsConstructor
@NoArgsConstructor
@ApiModel("店铺实体")
public class Shop {
    @ApiModelProperty("店铺id")
    private int id;
    @ApiModelProperty("店铺名称")
    private String name;
    @ApiModelProperty("店铺头像")
    private String cover;
    @ApiModelProperty("价格合理评分")
    private String price;
    @ApiModelProperty("店铺总销量")
    private String sales;
    @ApiModelProperty("店铺全部商品数量")
    private int productNumber;
}
