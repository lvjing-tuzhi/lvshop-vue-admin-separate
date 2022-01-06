package com.lvshopadmin.mapper;

import com.lvshopadmin.pojo.Shop;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @program: lvshopAdmin
 * @description: 店铺dao
 * @author: 兔子
 * @create: 2022-01-06 18:47
 **/

@Mapper
@Repository
public interface ShopMapper {
    //查询所有店铺
    List<Shop> select();
    //按id查询店铺
    Shop selectById(@Param("id") int id);
}
