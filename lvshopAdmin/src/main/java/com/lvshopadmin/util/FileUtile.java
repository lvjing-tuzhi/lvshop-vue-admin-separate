package com.lvshopadmin.util;

import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.util.UUID;

/**
 * @program: lvshopAdmin
 * @description: 文件上传工具类
 * @author: 兔子
 * @create: 2022-01-09 13:36
 **/

public class FileUtile {
    public static String fileUpload(MultipartFile fileUpload) {
        //获取文件名
        String fileName = fileUpload.getOriginalFilename();
        //获取文件后缀名
        String suffixName = fileName.substring(fileName.lastIndexOf("."));
        //重新生成文件名
        fileName = UUID.randomUUID()+suffixName;
        //指定本地文件夹存储图片
        String filePath = "D:\\项目\\商城前后端分离\\lvshopAdmin\\src\\main\\resources\\static\\upload\\";

        try {
            //将图片保存到static文件夹里
            fileUpload.transferTo(new File(filePath+fileName));
            return "upload/"+fileName;
        } catch (Exception e) {
            e.printStackTrace();
            return "上传失败";
        }
    }
}
