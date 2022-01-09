package com.lvshopadmin.service.productorder;

import com.lvshopadmin.entity.ShoppCart;
import com.lvshopadmin.entity.UserJudge;
import com.lvshopadmin.pojo.ProductOrder;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @program: lvshopAdmin
 * @description: 订单业务层
 * @author: 兔子
 * @create: 2022-01-07 10:50
 **/

public interface ProductOrderService {
    //根据商品id查询商品
    List<ProductOrder> selectByPid(int productId);
    //根据商品id查询用户评价
    List<UserJudge> selectJudgeByPid(int productId);
    //    增加订单
    int add(ProductOrder productOrder);
    //    按用户id查询商品订单
    List<ShoppCart> selectShoppCart(int userId);
    //按订单id查询订单
    int update(ProductOrder productOrder);
}
