package com.lvshopadmin.controller;

import com.lvshopadmin.entity.Result;
import com.lvshopadmin.entity.StatusCode;
import com.lvshopadmin.service.productcategory.ProductCategoryService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * @program: lvshopAdmin
 * @description: 分类控制层
 * @author: 兔子
 * @create: 2022-01-04 22:13
 **/

@RestController
@RequestMapping("/category")
@Api(tags = "分类接口")
@CrossOrigin
public class ProductCategoryController {

    @Autowired
    ProductCategoryService productCategoryService;

    @GetMapping("/id/{id}")
    @ApiOperation("按id查询分类")
    public Result selectById(@PathVariable("id") int id) {
        return new Result(true,StatusCode.OK,"查询成功",productCategoryService.selectById(id));
    }

    @GetMapping("/pid/{pid}")
    @ApiOperation("按pid查询分类")
    public Result selectByPid(@PathVariable("pid") int pid) {
        return new Result(true,StatusCode.OK,"查询成",productCategoryService.selectByPid(pid));
    }

    @GetMapping("/one")
    @ApiOperation("查询一级分类接口")
    public Result selectOneCategory() {
        return new Result(true, StatusCode.OK,"查询成功",productCategoryService.selectOneCategory());
    }

}
