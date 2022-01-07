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
    User selectById(@Param("id") int id);
}
