<template>
  <div class="profile-list">
    <profile-list-item>
      <template v-slot:icon>
        <img src="~assets/img/profile/message.svg">
      </template>
      <template v-slot:text>
        <div>我的消息</div>
      </template>
    </profile-list-item>

    <profile-list-item>
      <template v-slot:icon>
        <img src="~assets/img/profile/shopping.svg">
      </template>
      <template v-slot:text>
        <div>积分商城</div>
      </template>
    </profile-list-item>

    <profile-list-item>
      <template v-slot:icon>
        <img src="~assets/img/profile/vip.svg">
      </template>
      <template v-slot:text>
        <div>会员卡</div>
      </template>
    </profile-list-item>

    <profile-list-item>
      <template v-slot:icon>
        <img src="~assets/img/profile/avatar.svg">
      </template>
      <template v-slot:text>
        <div>我的购物车</div>
      </template>
    </profile-list-item>

    <profile-list-item>
      <template v-slot:icon>
        <img src="~assets/img/profile/shopping.svg">
      </template>
      <template v-slot:text>
        <div>下载购物车APP</div>
      </template>
    </profile-list-item>
  </div>
</template>

<script>
import ProfileListItem from "./ProfileListItem";
export default {
  name: "ProfileList",
  components: {ProfileListItem}
}
</script>

<style scoped>

</style>