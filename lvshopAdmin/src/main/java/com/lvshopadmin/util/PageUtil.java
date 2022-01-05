package com.lvshopadmin.util;

/**
 * @program: lvshopAdmin
 * @description: 分页得到页数的工具类
 * @author: 兔子
 * @create: 2022-01-05 16:49
 **/

public class PageUtil {

    public static int getPage(int page, int size) {
        page =(page - 1) * size;
        return page;
    }
}
