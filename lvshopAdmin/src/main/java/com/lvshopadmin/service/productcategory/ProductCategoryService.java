package com.lvshopadmin.service.productcategory;

import com.lvshopadmin.pojo.ProductCategory;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @program: lvshopAdmin
 * @description: 产品分类业务层接口
 * @author: 兔子
 * @create: 2022-01-04 21:53
 **/

public interface ProductCategoryService {
    //查询所有分类
    List<ProductCategory> select();
    //    按id查询分类
    List<ProductCategory> selectById(int id);
//    按pid查询分类
    List<ProductCategory> selectByPid(int pid);
    //查询一级分类
    List<ProductCategory> selectOneCategory();
}
