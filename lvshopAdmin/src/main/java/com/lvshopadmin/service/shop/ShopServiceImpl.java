package com.lvshopadmin.service.shop;

import com.lvshopadmin.mapper.ShopMapper;
import com.lvshopadmin.pojo.Shop;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @program: lvshopAdmin
 * @description: 店铺业务层实现类
 * @author: 兔子
 * @create: 2022-01-06 18:50
 **/

@Service
public class ShopServiceImpl implements ShopService{

    @Autowired
    ShopMapper shopMapper;

    @Override
    public List<Shop> select() {
        return shopMapper.select();
    }

    @Override
    public Shop selectById(int id) {
        return shopMapper.selectById(id);
    }
}
