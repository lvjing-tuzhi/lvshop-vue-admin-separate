package com.lvshopadmin.service.file;

import com.lvshopadmin.mapper.FileMapper;
import com.lvshopadmin.pojo.File;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @program: lvshopAdmin
 * @description: 文件实现类
 * @author: 兔子
 * @create: 2022-01-03 10:59
 **/

@Service
public class FileServiceImpl implements FileService{

    @Autowired
    FileMapper fileMapper;

    @Override
    public List<File> select() {
        return fileMapper.select();
    }

    @Override
    public List<File> selectBanner() {
        return fileMapper.selectByType("banner");
    }

    @Override
    public File selectById(Integer id) {
        return fileMapper.selectById(id);
    }

    @Override
    public int add(File file) {
        return fileMapper.add(file);
    }

    @Override
    public int update(File file) {
        return fileMapper.update(file);
    }

    @Override
    public int deleteById(Integer id) {
        return fileMapper.deleteById(id);
    }
}
