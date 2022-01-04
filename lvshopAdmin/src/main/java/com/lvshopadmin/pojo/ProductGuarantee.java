package com.lvshopadmin.pojo;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @program: lvshopAdmin
 * @description: 商品保证类
 * @author: 兔子
 * @create: 2022-01-04 18:16
 **/

@Data
@AllArgsConstructor
@NoArgsConstructor
@ApiModel("商品保证类")
public class ProductGuarantee {
    @ApiModelProperty("商品保证类id")
    private int id;
    @ApiModelProperty("商品保证类名字")
    private String name;
}
