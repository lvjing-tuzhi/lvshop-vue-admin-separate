package com.lvshopadmin.service.product;

import com.lvshopadmin.mapper.ProductMapper;
import com.lvshopadmin.pojo.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @program: lvshopAdmin
 * @description: 产品业务层实现类
 * @author: 兔子
 * @create: 2022-01-05 10:06
 **/

@Service
public class ProductServiceImpl implements ProductService{

    @Autowired
    ProductMapper productMapper;

    @Override
    public List<Product> select() {
        return productMapper.select();
    }

    @Override
    public List<Product> selectByRecommendType(String recommendType) {
        return productMapper.selectByRecommendType(recommendType);
    }

    @Override
    public Product selectById(int id) {
        return productMapper.selectById(id);
    }
}
