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
//        File file = new File();
//        file.setName("测试二");
//        file.setPosition("https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fup.enterdesk.com%2Fedpic%2Fba%2Fb0%2F1d%2Fbab01de371ce89ce0f44606d67fbc7a1.jpg&refer=http%3A%2F%2Fup.enterdesk.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643803686&t=df3f0a0c4b0955fb4789428d0d25aced");
//        file.setUrl("https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fup.enterdesk.com%2Fedpic%2Fba%2Fb0%2F1d%2Fbab01de371ce89ce0f44606d67fbc7a1.jpg&refer=http%3A%2F%2Fup.enterdesk.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643803686&t=df3f0a0c4b0955fb4789428d0d25aced");
//        file.setPosition("aa");
//        file.setUrl("bbb");
//        file.setDescribe("百度图片");
//        file.setType("banner");
        System.out.println(fileService.add(new File(2,"a","a","a","a","a")));
    }
    @Test
    public void update() {
        int aaa = fileService.update(new File(1, null, "aaa", null, null, null));
        System.out.println(aaa);
    }
    @Test
    public void deleteById() {
        System.out.println(fileService.deleteById(2));
    }

}
