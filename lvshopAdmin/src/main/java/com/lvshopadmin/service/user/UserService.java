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
    User selectById(int id);
}
