package com.lvshopadmin.service.user;

import com.lvshopadmin.mapper.UserMapper;
import com.lvshopadmin.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @program: lvshopAdmin
 * @description: 用户业务实现类
 * @author: 兔子
 * @create: 2022-01-07 10:10
 **/

@Service
public class UserServiceImpl implements UserService{

    @Autowired
    UserMapper userMapper;

    @Override
    public User selectById(int id) {
        return userMapper.selectById(id);
    }
}
