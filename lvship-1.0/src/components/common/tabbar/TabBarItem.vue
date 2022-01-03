<template>
  <div id="tab-bar-item" @click="itemClick">
    <div v-if="isActive"><slot name="item-icon"></slot></div>
    <div v-else><slot name="item-icon-active"></slot></div>
    <div :style="activeStyle"><slot name="item-text"></slot></div>
  </div>
</template>

<script>


export default {
  name: "TabBarItem",
  props: {
    path: {
      type: String,
      default: '/home'
    },
    activeColor: {
      type: String,
      default: 'red'
    }
  },
  computed: {
    isActive() {
      return this.$route.path !== this.path
    },
    activeStyle() {
      return !this.isActive?'color:'+this.activeColor:''
    }
  },
  data() {
    return {
    }
  },
  methods: {
    itemClick() {
      this.$router.replace(this.path)
    }
  }
}
</script>

<style>
#tab-bar-item {
  height: 46px;
  flex:1;
  text-align: center;
  font-size: 16px;
  align-items: center;
  padding: 2px 0px 2px 0px;
  box-sizing: border-box;
}
#tab-bar-item img {
  width: 20px;
  height: 20px;
}
</style>