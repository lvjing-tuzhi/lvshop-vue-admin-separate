package com.lvshopadmin.mapper;

import com.lvshopadmin.entity.ShoppCart;
import com.lvshopadmin.entity.StatusCode;
import com.lvshopadmin.entity.UserJudge;
import com.lvshopadmin.pojo.Product;
import com.lvshopadmin.pojo.ProductOrder;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @program: lvshopAdmin
 * @description: 商品订单dao
 * @author: 兔子
 * @create: 2022-01-07 10:45
 **/

@Mapper
@Repository
public interface ProductOrderMapper {
    //根据商品id查询商品订单
    List<ProductOrder> selectByPid(@Param("productId") int productId);
    //根据商品id查询用户评价
    List<UserJudge> selectJudgeByPid(@Param("productId") int productId);
    //增加商品订单
    int add(ProductOrder productOrder);
    // 按用户id查询商品订单
    List<ShoppCart> selectShoppCart(@Param("userId") int userId);
    //按订单id查询订单
    int update(ProductOrder productOrder);
}
