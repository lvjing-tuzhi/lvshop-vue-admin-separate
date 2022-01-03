<template>
  <div class="toast" v-if="isShow">{{message}}</div>
</template>

<script>
export default {
  name: "Toast",
  props: {
    message: {
      type: String,
      default: ''
    },
    isShow: {
      type: Boolean,
      default: false
    }
  }
}
</script>

<style scoped>
  .toast {
    padding: 10px;
    position: absolute;
    left: 50%;
    bottom: 50%;
    transform: translate(-50%,-50%);
    z-index: 999;
    background-color: rgba(0, 0, 0, .75);
    color: #fff;
    border-radius: 15px;
  }
</style>