package com.lvshopadmin.mapper;

import com.lvshopadmin.entity.UserJudge;
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
    //根据商品id查询商品
    List<ProductOrder> selectByPid(@Param("productId") int productId);
    //根据商品id查询用户评价
    List<UserJudge> selectJudgeByPid(@Param("productId") int productId);
}
