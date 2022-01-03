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

    List<File> select();

    List<File> selectByType(@Param("type") String type);

    File selectById(@Param("id") Integer id);

    int add(File file);

    int update(File file);

    int deleteById(@Param("id") Integer id);
}
