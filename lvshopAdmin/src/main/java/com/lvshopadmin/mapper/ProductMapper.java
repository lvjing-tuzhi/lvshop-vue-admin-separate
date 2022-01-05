package com.lvshopadmin.mapper;

import com.lvshopadmin.pojo.Product;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @program: lvshopAdmin
 * @description: 产品dao
 * @author: 兔子
 * @create: 2022-01-05 09:57
 **/

@Mapper
@Repository
public interface ProductMapper {
    //查询所有的产品
    List<Product> select();
    //按推荐类型查询所有产品
    List<Product> selectByRecommendType(@Param("recommendType") String recommendType);
    //按推荐类型分页查询产品
    List<Product> selectByRecommendTypePage(@Param("recommendType") String recommendType, @Param("page") int page, @Param("size") int size);
    //按id查询产品
    Product selectById(@Param("id") int id);
}
