<template>
  <div id="user-info">
    <a href="#" class="clear-fix">
      <slot name="user-icon">
        <div class="privateImage-svg left" v-if="userInfo.id != null">
          <img :src="'http://127.0.0.1:8080/'+userInfo.url" alt="" class="privateImage-svg left">
        </div>
      </slot>
      <div class="login-info left">
        <slot name="user-nickname">
          <div @click="isLogin = !isLogin" v-if="userInfo.id == null">登录/注册</div>
          <div v-else>{{userInfo.name}}</div>
        </slot>
        <div class="phone">
          <span>
            <svg data-v-735ff1be="" fill="#fff" class="icon-mobile"><use data-v-735ff1be="" xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#mobile"></use></svg>
          </span>
          <slot name="user-phone">暂无绑定手机号</slot>
        </div>
      </div>
      <svg data-v-735ff1be="" fill="#fff" class="arrow-svg right"><use data-v-735ff1be="" xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#arrow-right"></use></svg>
    </a>

<!--    登录注册页面-->
    <div v-if="isLogin">
      <el-form ref="form" :model="form" label-width="60px" class="login-boxs">
        <div v-if="isRegistser">
          <el-form-item label="用户名">
            <el-input v-model="form.name"></el-input>
          </el-form-item>
          <el-form-item label="上传头像">
            <el-upload
                class="avatar-uploader"
                action="http://127.0.0.1:8080/file/fileUpload"
                :show-file-list="false"
                :on-success="handleAvatarSuccess"
                :before-upload="beforeAvatarUpload">
              <img v-if="imageUrl" :src="imageUrl" >
              <i v-else class="el-icon-plus avatar-uploader-icon"></i>
            </el-upload>
          </el-form-item>
        </div>
        <el-form-item label="账号">
          <el-input v-model="form.username"></el-input>
        </el-form-item>
        <el-form-item label="密码">
          <el-input v-model="form.password" show-password placeholder="请输入密码"></el-input>
        </el-form-item>
        <el-form-item>
          <el-button type="primary" @click="onSubmit" round size="mini" v-if="!isRegistser">登录</el-button>
          <el-button round size="mini" type="success" @click="onRegists">{{isRegistser?'注册':'去注册'}}</el-button>
          <el-button round type="danger" size="mini" @click="noLogin">取消</el-button>
        </el-form-item>
      </el-form>
    </div>



  </div>
</template>
<script>
  import {register} from "@/network/user";
	import {myLog,setCookie,getCookie} from "@/common/utils";
	import {getLogin} from "@/network/user";
	import {USERID} from "@/common/constant";

  export default {
		name: "UserInfo",
    data() {
		  return {
        imageUrl: '',
		    isLogin: false,
        isRegistser: false,
		    form: {
          username: '',
          password: '',
        },
        userInfo: {
		      id: null,
          name: '',
          url: '',
        }
      }
    },
    methods: {
		  //登录
      onSubmit() {
        getLogin(this.form).then( res => {
          if (res.msg == "登录成功") {
            this.userInfo = res.result;
            this.isLogin = false;
            setCookie(USERID,this.userInfo.id)
          }else {
            alert(res.msg)
          }
        })
      },
      //注册
      onRegists() {
        if (this.isRegistser) {
          register(this.form).then( res => {
            myLog("注册结果：",res)
          })
        }
        this.isRegistser = true;
      },
      noLogin() {
        this.isLogin = false;
        this.isRegistser = false;
      },
      handleAvatarSuccess(res, file) {
        // this.imageUrl = URL.createObjectURL(file.raw);
        this.imageUrl = "127.0.0.1:8080/"+file.response.msg
        this.form.url = file.response.msg
        myLog("file",file)
      },
      beforeAvatarUpload(file) {
        const isJPG = file.type === 'image/jpeg';
        const isLt2M = file.size / 1024 / 1024 < 2;

        if (!isJPG) {
          this.$message.error('上传头像图片只能是 JPG 格式!');
        }
        if (!isLt2M) {
          this.$message.error('上传头像图片大小不能超过 2MB!');
        }
        return isJPG && isLt2M;
      }
    }

	}
</script>

<style scoped>
  #user-info {
    background-color: var(--color-tint);
    padding: 15px;
    margin-top: -5px;
  }

  #user-info .privateImage-svg {
    width: 60px;
    height: 60px;
    background-color: #fff;
    border-radius: 30px;
  }

  .left {
    float: left;
  }

  #user-info .arrow-svg {
    width: 11px;
    height: 22px;
    margin-top: 18px;
  }

  #user-info .login-info {
    color: #fff;
    margin: 10px 0 0 10px;
    width: 200px;
  }

  #user-info .login-info .phone {
    position: relative;

    font-size: 13px;
    margin-top: 5px;
    margin-left: 15px;
    font-weight: 300;
  }

  #user-info .login-info .phone .icon-mobile {
    position: absolute;
    width: 12px;
    height: 18px;
    left: -15px;
    top: 0px;
  }
  .avatar-uploader .el-upload {
    border: 1px dashed #d9d9d9;
    border-radius: 6px;
    cursor: pointer;
    position: relative;
    overflow: hidden;
  }
  .avatar-uploader .el-upload:hover {
    border-color: #409EFF;
  }
  .avatar-uploader-icon {
    font-size: 28px;
    color: #8c939d;
    width: 178px;
    height: 178px;
    line-height: 178px;
    text-align: center;
  }
  .avatar {
    width: 178px;
    height: 178px;
    display: block;
  }
</style>
