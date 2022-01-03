package com.lvshopadmin.entity;

/**
 * @program: lvshopAdmin
 * @description: 结果类
 * @author: 兔子
 * @create: 2022-01-03 11:46
 **/

public class Result {
    private Integer code;// 返回
    private String msg;//返回信息
    private boolean flag;//
    private Object result;// 返回数据

    public Result(boolean flag, Integer code, String message, Object data) {
        super();
        this.flag = flag;
        this.code = code;
        this.msg = message;
        this.result = data;
    }

    public Result(boolean flag, Integer code, String message) {
        super();
        this.flag = flag;
        this.code = code;
        this.msg = message;
    }

    public Result() {
    }

    public Result(Integer code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    public Result(Integer code, String msg, Object result) {
        this.code = code;
        this.msg = msg;
        this.result = result;
    }

    public boolean isFlag() {
        return flag;
    }

    public void setFlag(boolean flag) {
        this.flag = flag;
    }

    public Object getResult() {
        return result;
    }

    public void setResult(Object result) {
        this.result = result;
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

}
