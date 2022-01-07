package com.lvshopadmin.service.productorder;

import com.lvshopadmin.entity.UserJudge;
import com.lvshopadmin.mapper.ProductOrderMapper;
import com.lvshopadmin.pojo.ProductOrder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @program: lvshopAdmin
 * @description: 订单业务层
 * @author: 兔子
 * @create: 2022-01-07 10:50
 **/

@Service
public class ProductOrderServiceImpl implements ProductOrderService{

    @Autowired
    ProductOrderMapper productOrderMapper;

    @Override
    public List<ProductOrder> selectByPid(int productId) {
        return productOrderMapper.selectByPid(productId);
    }

    @Override
    public List<UserJudge> selectJudgeByPid(int productId) {
        return productOrderMapper.selectJudgeByPid(productId);
    }
}
