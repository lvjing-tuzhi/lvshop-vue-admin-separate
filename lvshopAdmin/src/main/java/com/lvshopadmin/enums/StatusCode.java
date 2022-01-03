package com.lvshopadmin.enums;

/**
 * @program: lvshopAdmin
 * @description: 状态码
 * @author: 兔子
 * @create: 2022-01-03 16:45
 **/

public enum StatusCode {
    OK(10001, "操作成功"),
    ERROR(10002, "操作失败"),
    NOLOGINERROR(10003, "用户未登录"),
    ACCESSERROR(403, "用户没有此操作权限"),
    USERERROR(10007, "用户异常"),
    IONOEXISTERROR(10027, "Io地址不存在"),
    PARAMERROR(10023, "参数错误"),
    COUNTERROR(10024, "用户名不存在或密码不正确"),
    NOFOUND(404, "资源不存在");

    private final Integer code;
    private final String info;

    StatusCode(Integer code, String info) {
        this.code = code;
        this.info = info;
    }

    public Integer getCode() {
        return code;
    }

    public String getInfo() {
        return info;
    }
}
