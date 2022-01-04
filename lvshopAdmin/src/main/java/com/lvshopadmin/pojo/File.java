package com.lvshopadmin.pojo;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.annotations.ApiOperation;
import io.swagger.models.auth.In;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.web.bind.annotation.RequestBody;


/**
 * @program: lvshopAdmin
 * @description: 文件实体类
 * @author: 兔子
 * @create: 2022-01-03 10:48
 **/


@Data
@AllArgsConstructor
@NoArgsConstructor
@ApiModel("文件实体")
public class File {
    @ApiModelProperty("id")
    private Integer id;
    @ApiModelProperty("文件名")
    private String name;
    @ApiModelProperty("文件所在位置")
    private String position;
    @ApiModelProperty("文件跳转路径")
    private String url;
    @ApiModelProperty("文件描述")
    private String describe;
    @ApiModelProperty("文件类型:banner(轮播图)")
    private String type;
}
