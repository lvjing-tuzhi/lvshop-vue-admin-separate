package com.lvshopadmin.mapper;

import com.lvshopadmin.pojo.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

/**
 * @program: lvshopAdmin
 * @description: 用户dao层
 * @author: 兔子
 * @create: 2022-01-07 10:05
 **/

@Mapper
@Repository
public interface UserMapper {
//    按id查询用户的id和name和url信息
    User selectById(@Param("id") int id);
    //查询账号密码正不正确
    User selectLogin(User user);
//    添加用户
    int add(User user);
}


