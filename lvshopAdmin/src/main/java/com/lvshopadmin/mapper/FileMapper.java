package com.lvshopadmin.mapper;

import com.lvshopadmin.pojo.File;
import io.swagger.models.auth.In;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @program: lvshopAdmin
 * @description: File数据库的dao层
 * @author: 兔子
 * @create: 2022-01-03 10:51
 **/

@Mapper
@Repository
public interface FileMapper {

    //查询所有文件
    List<File> select();

    //按类型查询文件
    List<File> selectByType(@Param("type") String type);

    //按id查询文件
    File selectById(@Param("id") Integer id);

    //添加
    int add(File file);

    //更新
    int update(File file);

    //按id删除
    int deleteById(@Param("id") Integer id);
}
