package com.lvshopadmin.service.home;

import com.lvshopadmin.pojo.File;
import com.lvshopadmin.pojo.Product;

import java.util.List;

/**
 * @program: lvshopAdmin
 * @description: 首页业务接口
 * @author: 兔子
 * @create: 2022-01-03 17:04
 **/


public interface HomeService {

    //获取本周推荐接口
    List<Product> selectWeek();

}
