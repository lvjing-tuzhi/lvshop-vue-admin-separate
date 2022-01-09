package com.lvshopadmin.service.productcategory;

import com.lvshopadmin.mapper.ProductCategoryMapper;
import com.lvshopadmin.pojo.ProductCategory;
import com.lvshopadmin.pojo.ProductOrder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @program: lvshopAdmin
 * @description: 产品分类业务实现类
 * @author: 兔子
 * @create: 2022-01-04 22:01
 **/

@Service
public class ProductCategoryServiceImpl implements ProductCategoryService {

    @Autowired
    ProductCategoryMapper categoryMapper;

    @Override
    public List<ProductCategory> select() {
        return categoryMapper.select();
    }

    @Override
    public List<ProductCategory> selectById(int id) {
        return categoryMapper.selectById(id);
    }

    @Override
    public List<ProductCategory> selectByPid(int pid) {
        return categoryMapper.selectByPid(pid);
    }

    @Override
    public List<ProductCategory> selectOneCategory() {
        return categoryMapper.selectByPid(0);
    }

}
