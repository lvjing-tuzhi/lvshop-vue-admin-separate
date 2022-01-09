package com.lvshopadmin.controller;

import com.lvshopadmin.entity.Result;
import com.lvshopadmin.entity.StatusCode;
import com.lvshopadmin.pojo.User;
import com.lvshopadmin.service.user.UserService;
import com.lvshopadmin.util.FileUtile;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

/**
 * @program: lvshopAdmin
 * @description: 用户控制层
 * @author: 兔子
 * @create: 2022-01-08 09:28
 **/

@RestController
@RequestMapping("/user")
@CrossOrigin
@Api(tags = "用户接口类")
public class UserController {

    @Autowired
    UserService userService;

    @PostMapping("/login")
    @ApiOperation("登录接口")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "username", value = "用户名"),
            @ApiImplicitParam(name = "password", value = "密码")
    })
    public Result login(@RequestBody User user) {
        User user1 = userService.selectLogin(user);
        if (user1 == null) {
            return new Result(true,StatusCode.OK,"账号或者密码错误");
        }else {
            return new Result(true,StatusCode.OK,"登录成功",user1);
        }

    }

    @PostMapping("/register")
    @ApiOperation("注册接口")
    public Result register(@RequestBody User user) {
        System.err.println(user);
        int add = userService.add(user);
        if (add > 0) {
            return new Result(true,StatusCode.OK,"注册成功");
        }else {
            return new Result(true,StatusCode.OK,"注册失败");
        }
    }
}
