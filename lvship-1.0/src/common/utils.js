//公共方法

// 设置cookie
export function setCookie(cname,cvalue) {
    var d = new Date();
    // d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
    // var expires = "expires=" + d.toUTCString();
    // console.info(cname + "=" + cvalue + "; ");
    // document.cookie = cname + "=" + cvalue + "; " + expires;
    document.cookie = cname + "=" + cvalue;
    // console.info(document.cookie);
}
// 获取cookie
export function getCookie(cname) {
    var name = cname + "=";
    var ca = document.cookie.split(';');
    // console.log("获取cookie,现在循环")
    for (var i = 0; i < ca.length; i++) {
        var c = ca[i];
        // console.log(c)
        while (c.charAt(0) == ' ') c = c.substring(1);
        if (c.indexOf(name) != -1){
            return c.substring(name.length, c.length);
        }
    }
    return "";
}

//打印
export function myLog(str,data) {
    console.log("======" + str + "======");
    console.log(data);
}

// 图片字符分割成数组
export function StringToArray(data) {
    return data.split("吕竟的分隔符")
}

// 防抖函数
export  function debounce (func, delay=200){
    let timer = null
    return function (...args){
        if(timer) clearTimeout(timer)
        timer = setTimeout(() => {
            func.apply(this, args)
        },delay)
    }
}

// 时间戳转化
export function formatDate(date, fmt) {
    if(/(y+)/.test(fmt)) {
        fmt = fmt.replace(RegExp.$1, (date.getFullYear() + '').substr(4 - RegExp.$1.length));
    }
    let o = {
        'M+': date.getMonth() + 1,
        'd+': date.getDate(),
        'h+': date.getHours(),
        'm+': date.getMinutes(),
        's+': date.getSeconds()
    };
    for (let k in o) {
        if (new RegExp(`(${k})`).test(fmt)) {
            let str = o[k] + '';
            fmt = fmt.replace(RegExp.$1, (RegExp.$1.length === 1) ? str : padLeftZero(str));
        }
    }
    return fmt;
}
function padLeftZero (str) {
    return ('00' + str).substr(str.length);
}
