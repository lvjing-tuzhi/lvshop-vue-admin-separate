import {request} from "@/network/request";


//按订单id修改订单
export function updateShopCart(order) {
    return request({
        url: '/order',
        method: 'put',
        data: order
    })
}

//按商品id获得全部订单
export function getShopCart(productId) {
    return request({
        url: '/order/shopCart/'+productId,
        // data: productId
    })
}

// 购物车商品订单类
export class cartOrder {
    constructor(shopCartItem) {
        //商品id
        this.iid = shopCartItem.product.id
        this.id = shopCartItem.id
        //用户id
        this.userId = shopCartItem.userId
        this.productId = shopCartItem.product.id
        this.img = shopCartItem.product.covers
        //订单名字
        this.name = shopCartItem.product.name
        this.title = shopCartItem.product.name
        this.desc = shopCartItem.product.describt
        this.price = shopCartItem.price
        this.newPrice = shopCartItem.price
        //订单颜色
        this.color = '红色'
        //商品是否支付,-1购物车,0未支付，1支付
        this.isPay = '-1'
        //商品尺寸
        this.size = 'M'
    }
}
