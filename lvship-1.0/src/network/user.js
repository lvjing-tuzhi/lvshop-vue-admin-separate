
import {request} from "@/network/request";


//注册接口
export function register(form) {
    return request({
        url: '/user/register',
        method: 'post',
        data: form
    })
}

//登录接口
export function getLogin(form) {
    return request({
        url: '/user/login',
        method: 'post',
        data: form
    })
}
