package com.lvshopadmin.entity;

import com.lvshopadmin.pojo.User;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

/**
 * @program: lvshopAdmin
 * @description: 用户评价实体类
 * @author: 兔子
 * @create: 2022-01-07 13:25
 **/

@Data
@AllArgsConstructor
@NoArgsConstructor
@ApiModel("用户评价实体类")
public class UserJudge {
    @ApiModelProperty("订单id")
    private int id;
    @ApiModelProperty("评价内容")
    private String judge;
    @ApiModelProperty("评价时间")
    private Date judgeDate;
    @ApiModelProperty("订单颜色")
    private String color;
    @ApiModelProperty("订单尺寸")
    private String size;
    @ApiModelProperty("用户实体类")
    private User user;
}
