package com.lvshopadmin.service.product;

import com.lvshopadmin.mapper.ProductMapper;
import com.lvshopadmin.pojo.Product;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @program: lvshopAdmin
 * @description: 产品业务层接口
 * @author: 兔子
 * @create: 2022-01-05 10:06
 **/

public interface ProductService {
    //查询所有的产品
    List<Product> select();
    //按推荐类型查询所有产品
    List<Product> selectByRecommendType(String recommendType);
    //按推荐类型分页查询产品
    List<Product> selectByRecommendTypePage(String recommendType, int page, int size);
    //按id查询产品
    Product selectById(int id);
}
