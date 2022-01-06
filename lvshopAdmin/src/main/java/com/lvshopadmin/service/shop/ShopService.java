package com.lvshopadmin.service.shop;

import com.lvshopadmin.pojo.Shop;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @program: lvshopAdmin
 * @description: 店铺业务层
 * @author: 兔子
 * @create: 2022-01-06 18:50
 **/

public interface ShopService {
    //查询所有店铺
    List<Shop> select();
    //按id查询店铺
    Shop selectById(int id);
}
