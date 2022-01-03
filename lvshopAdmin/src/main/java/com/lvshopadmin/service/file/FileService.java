package com.lvshopadmin.service.file;

import com.lvshopadmin.pojo.File;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @program: lvshopAdmin
 * @description: 文件业务层接口
 * @author: 兔子
 * @create: 2022-01-03 10:58
 **/

public interface FileService {

    List<File> select();

    List<File> selectBanner();

    File selectById(Integer id);

    int add(File file);

    int update(File file);

    int deleteById(Integer id);

}
