<template>
  <div id="app" class="wrapper">
    <router-view v-slot="{ Component }">
      <keep-alive exclude="Detail,Cart">
        <component :is="Component" />
      </keep-alive>
    </router-view>
    <main-tab-bar/>
  </div>
</template>

<script>

import MainTabBar from "./components/content/mainTabBar/MainTabBar";

export default {
  name: 'App',
  components: {
    MainTabBar
  }
}
</script>

<style>
  @import "assets/css/base.css";
</style>
