package com.lvshopadmin.entity;

/**
 * 状态
 */
public class StatusCode {

    public static final int OK = 10001;//成功
    public static final int ERROR = 10002;//操作失败
    public static final int NOLOGINERROR = 10003;//用户未登录
    public static final int ACCESSERROR = 10004;//用户没有此操作权限
    public static final int LOGINNAMEERROR = 10005;//用户名不正确
    public static final int PASSWORDERROR = 10006;//密码不正确
    public static final int USERERROR = 10007;//
    public static final int IONOEXISTERROR = 10027;//Io地址不存在
    public static final int PARAMERROR = 10023;//参数错误
    public static final int COUNTERROR = 10024;//用户名错误
    public static final int ACCESSDENIED = 403;//用户没有此权限

}
