package com.lvshopadmin;

import com.lvshopadmin.pojo.File;
import com.lvshopadmin.service.file.FileService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

/**
 * @program: lvshopAdmin
 * @description:
 * @author: 兔子
 * @create: 2022-01-03 11:02
 **/

@SpringBootTest
public class FileTest {

    @Autowired
    FileService fileService;

    @Test
    public void select() {
        List<File> select = fileService.select();
        for (File file : select) {
            System.out.println(file);
        }
    }

    @Test
    public void selectBanner() {
        List<File> files = fileService.selectBanner();
        for (File file : files) {
            System.out.println(file);
        }
    }
    @Test
    public void selectById() {
        File file = fileService.selectById(1);
        System.out.println(file);
    }
    @Test
    public void add() {
        File file = new File();
        file.setName("百度图片2");
        file.setType("banner");
        file.setUrl("https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5");
        file.setPosition("https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5");
        file.setDescribe("百度图片");
        System.out.println(fileService.add(file));
    }
    @Test
    public void update() {
        int aaa = fileService.update(new File(1, null, "aaa", null, null, null));
        System.out.println(aaa);
    }
    @Test
    public void deleteById() {
        System.out.println(fileService.deleteById(4));
    }

}
