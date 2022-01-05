package com.lvshopadmin;

import com.lvshopadmin.pojo.ProductCategory;
import com.lvshopadmin.service.productcategory.ProductCategoryService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

/**
 * @program: lvshopAdmin
 * @description: 分类测试类
 * @author: 兔子
 * @create: 2022-01-04 22:35
 **/

@SpringBootTest
public class ProductMapperCategoryTest {

    @Autowired
    ProductCategoryService categoryService;

    @Test
    public void selectByPid() {
        List<ProductCategory> productCategories = categoryService.selectByPid(0);
        for (ProductCategory productCategory : productCategories) {
            System.out.println(productCategories);
        }
    }
}
