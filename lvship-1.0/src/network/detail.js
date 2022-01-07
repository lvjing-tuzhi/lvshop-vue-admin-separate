import {request} from "./request";
import {myLog, StringToArray} from "@/common/utils";


//按商品id得到所有评论
export function getComment(productId) {
    return request({
        url: '/order/userJudge/'+productId
    })
}

// 按id得到商店信息
export function getGoodShop(id) {
    return request({
        url: '/shop/'+id
    })
}

//按id得到商品
export function getDetail(id) {
    return request({
        url: '/product/'+id
    })
}

export class Goods {
    constructor(data) {
        this.id = data.id
        this.title = data.name;
        this.desc = data.describt;
        this.newPrice = "￥"+data.price * data.discount * 0.1;
        this.oldPrice = data.price;
        this.discount = data.discount;
        this.columns = ["销量 "+data.sales,"收藏 "+data.collect,data.sendTime+" 时发货"];
        this.services = StringToArray(data.services);
        this.realPrice = data.minPrice;
        this.covers = data.covers
    }
}
export class GoodsParam {
    constructor(info, rule) {
        // 注：images可能没有值(某些商品优质，某些没有值)
        this.image = info.images ? info.images[0] : '';
        this.infos = info.set;
        this.sizes = rule.tables;
    }
}

export function getRecommend (recommendType) {
    return request({
        url: '/product/recommend/'+recommendType
    })
}
