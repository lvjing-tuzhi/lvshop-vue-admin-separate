import{request} from "./request";


// 获取轮播图图片
export function getHomeBanner() {
    return request({
        url: '/file/banner'
        // url: '/home/hello'
    })
}

// 获得本周推荐
export function getHomeWeek() {
    return request({
        url: '/home/week'
    })
}

//获得首页数据
// export function getHomeMultidata() {
//     return request({
//         url: '/home/multidata'
//     })
// }

//获得首页商品
// export function getHomeGoods(type,page) {
//     return request({
//         url: '/home/data',
//         params: {
//             type,
//             page
//         }
//     })
// }

