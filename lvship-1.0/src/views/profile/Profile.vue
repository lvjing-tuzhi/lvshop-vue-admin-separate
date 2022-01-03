<template>
  <div class="profile">
    <nav-bar>
      <template v-slot:bar-center>
        <div>我的档案</div>
      </template>
    </nav-bar>
    <user-info></user-info>
    <!--2.没有单独封装: 不同的地方太多, 需要传过多的参数-->
    <section class="account">
      <div class="account-item">
        <div class="number">
          <span class="balance">0.00</span>元
        </div>
        <div class="account-info">我的余额</div>
      </div>
      <div class="account-item">
        <div class="number">
          <span class="balance">0</span>个
        </div>
        <div class="account-info">我的优惠</div>
      </div>
      <div class="account-item">
        <div class="number">
          <span class="balance">0</span>分
        </div>
        <div class="account-info">我的积分</div>
      </div>
    </section>
    <profile-list/>
  </div>
</template>

<script>
import NavBar from "../../components/common/navbar/NavBar";
import UserInfo from "./childComps/UserInfo";
import ProfileList from "./childComps/ProfileList";

export default {
  name: "Profile",
  components: {ProfileList, NavBar,UserInfo},
  data() {
    return {
    }
  }
}
</script>

<style scoped>
.nav-bar {
  background-color: var(--color-tint);
  color: #fff;
  font-weight: 700;
}
.account {
  display: flex;
}
.account-item {
  width: 100%;
  background-color: #fff;
  margin-right: 1px;
  text-align: center;
}
.account-item:last-of-type {
  margin-right: 0;
}
.account-item {
  color: #666;
  font-size: 13px;
  padding: 18px;
}
.account-item .balance {
  font-size: 24px;
  font-weight: 700;
  color: #ff5f3e;
}
.account-info {
  margin-top: 6px;
}
</style>