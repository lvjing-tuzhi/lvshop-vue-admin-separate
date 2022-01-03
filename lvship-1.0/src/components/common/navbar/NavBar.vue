<template>
  <div class="nav-bar" :style="navBarStyle">
    <div><slot name="bar-left"></slot></div>
    <div><slot name="bar-center"></slot> </div>
    <div><slot name="bar-right"></slot></div>
  </div>
</template>

<script>
export default {
  name: "NavBar",
  props: {
    h: {
      type: String,
      default: '37'
    },
    fw: {
      type: String,
      default: '600'
    },
    fz: {
      type: String,
      default: '16'
    },
    bgc: {
      type: String,
      default: '#ff8198'
    },
    fc: {
      type: String,
      default: '#fff'
    }
  },
  computed: {
    navBarStyle() {
      return 'height:'+this.h+'px;font-size:'+this.fz+'px;font-weight:'+this.fw+';background:'+this.bgc+';color:'+this.fc
    }
  }
}
</script>

<style scoped>
.nav-bar {
  display: flex;
  justify-content: space-around;
  text-align: center;
  align-items: center;
  z-index: 999;
  position: relative;
  /*position: absolute;*/
  /*top: 0;*/
  /*left: 0;*/
  /*right: 0;*/
}
</style>