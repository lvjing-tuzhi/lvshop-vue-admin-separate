import{request} from "./request";

//获得首页数据
export function getHomeMultidata() {
    return request({
        url : '/home/multidata'
    })
}

//获得首页商品
export function getHomeGoods(type,page) {
    return request({
        url: '/home/data',
        params: {
            type,
            page
        }
    })
}