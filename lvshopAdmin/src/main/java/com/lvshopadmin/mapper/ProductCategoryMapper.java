package com.lvshopadmin.mapper;

import com.lvshopadmin.pojo.ProductCategory;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @program: lvshopAdmin
 * @description: 分类dao层接口
 * @author: 兔子
 * @create: 2022-01-04 21:49
 **/

@Mapper
@Repository
public interface ProductCategoryMapper {

//    查询所有分类
    List<ProductCategory> select();
//    按id查询分类
    List<ProductCategory> selectById(@Param("id") int id);
    //按pid查询分类
    List<ProductCategory> selectByPid(@Param("pid") int pid);
}
