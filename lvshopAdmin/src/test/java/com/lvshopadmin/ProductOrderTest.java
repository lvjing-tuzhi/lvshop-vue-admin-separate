package com.lvshopadmin;

import com.lvshopadmin.entity.ShoppCart;
import com.lvshopadmin.service.productorder.ProductOrderService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import javax.jws.Oneway;
import java.util.List;

/**
 * @program: lvshopAdmin
 * @description: 订单测试类
 * @author: 兔子
 * @create: 2022-01-08 18:40
 **/

@SpringBootTest
public class ProductOrderTest {

    @Autowired
    ProductOrderService productOrderService;

    @Test
    public void shopCart() {
        List<ShoppCart> shoppCarts = productOrderService.selectShoppCart(1);
        for (ShoppCart shoppCart : shoppCarts) {
            System.out.println(shoppCart);
        }
    }
}
