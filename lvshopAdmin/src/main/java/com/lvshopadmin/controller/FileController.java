package com.lvshopadmin.controller;

import com.lvshopadmin.entity.Result;
import com.lvshopadmin.entity.StatusCode;
import com.lvshopadmin.pojo.File;
import com.lvshopadmin.service.file.FileService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import io.swagger.models.auth.In;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @program: lvshopAdmin
 * @description: 文件控制類
 * @author: 兔子
 * @create: 2022-01-03 19:39
 **/


@RestController
@RequestMapping("/file")
@Api(tags = {"文件接口"})
@CrossOrigin
public class FileController {

    @Autowired
    FileService fileService;

    @GetMapping()
    @ApiOperation("获取所有图片")
    public Result list() {
        return new Result(true,StatusCode.OK,"查询成功",fileService.select());
    }

    @GetMapping("/banner")
    @ApiOperation("获取轮播图")
    public Result selectBanner() {
        return new Result(true,StatusCode.OK,"查询成功",fileService.selectBanner());
    }

    @GetMapping("/{id}")
    @ApiOperation("根据文件id获取文件")
    public Result selectById(@PathVariable("id") Integer id) {
        return new Result(true,StatusCode.OK,"查询成功",fileService.selectById(id));
    }

    @PostMapping()
    @ApiOperation("添加文件")
    @ApiImplicitParam(name = "File", value = "文件实体")
    public Result add(@RequestBody File file) {
        int add = fileService.add(file);
        if (add > 0) {
            return new Result(true,StatusCode.OK,"添加成功");
        }else {
            return new Result(true,StatusCode.OK,"添加失败");
        }
    }

    @PutMapping()
    @ApiOperation("按id修改文件")
    public Result update(@RequestBody File file) {
        int update = fileService.update(file);
        if (update > 0) {
            return new Result(true,StatusCode.OK,"更新成功");
        }else {
            return new Result(true,StatusCode.OK,"更新失败");
        }
    }

    @DeleteMapping("/{id}")
    @ApiOperation("按id删除文件")
    public Result delete(@PathVariable("id") Integer id) {
        int i = fileService.deleteById(id);
        if (i > 0) {
            return new Result(true,StatusCode.OK,"删除成功");
        }else {
            return new Result(true,StatusCode.OK,"删除失败");
        }
    }


}
