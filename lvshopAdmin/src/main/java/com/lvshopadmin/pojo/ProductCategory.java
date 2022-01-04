package com.lvshopadmin.pojo;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @program: lvshopAdmin
 * @description: 类别实体类
 * @author: 兔子
 * @create: 2022-01-04 18:03
 **/

@Data
@AllArgsConstructor
@NoArgsConstructor
@ApiModel("商品类别实体类")
public class ProductCategory {
    @ApiModelProperty("一级商品类别id")
    private int id;
    @ApiModelProperty("商品类别名")
    private String name;
    @ApiModelProperty("二级商品类别id")
    private int pid;
    @ApiModelProperty("图片地址")
    private String cover;
}
