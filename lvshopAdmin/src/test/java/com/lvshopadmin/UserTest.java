package com.lvshopadmin;

import com.lvshopadmin.mapper.UserMapper;
import com.lvshopadmin.pojo.User;
import com.lvshopadmin.service.user.UserService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

/**
 * @program: lvshopAdmin
 * @description: 用户测试类
 * @author: 兔子
 * @create: 2022-01-08 09:39
 **/

@SpringBootTest
public class UserTest {

    @Autowired
    UserService userService;

    @Test
    public void login() {
        User user = new User();
        user.setUsername("admin");
        user.setPassword("admin");
        System.out.println(userService.selectLogin(user));
    }
}
