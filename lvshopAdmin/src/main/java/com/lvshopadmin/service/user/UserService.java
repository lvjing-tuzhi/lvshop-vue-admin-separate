package com.lvshopadmin.service.user;

import com.lvshopadmin.pojo.User;
import org.apache.ibatis.annotations.Param;

/**
 * @program: lvshopAdmin
 * @description: 用户业务层
 * @author: 兔子
 * @create: 2022-01-07 10:09
 **/

public interface UserService {
//    按id查询用户的id、name、url信息
    User selectById(int id);
    //查询账号密码正不正确
    User selectLogin(User user);
    //添加用户
    int add(User user);
}
