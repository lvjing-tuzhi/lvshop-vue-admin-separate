package com.lvshopadmin.service.home;

import com.lvshopadmin.pojo.File;
import com.lvshopadmin.pojo.Product;
import com.lvshopadmin.service.file.FileService;
import com.lvshopadmin.service.product.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @program: lvshopAdmin
 * @description: 首页业务层实现类
 * @author: 兔子
 * @create: 2022-01-03 17:06
 **/

@Service
public class HomeServiceImpl implements HomeService{

    @Autowired
    ProductService productService;

    @Override
    public List<Product> selectWeek() {
        return productService.selectByRecommendType("week");
    }

    @Override
    public List<Product> selectTypePage(String recommendType, int page, int size) {
        return productService.selectByRecommendTypePage(recommendType,page,size);
    }
}
