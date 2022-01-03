<template>
  <div class="select-buttom">
    <div class="unselect" v-if="!isSelect"></div>
    <div class="select" v-else><img src="~assets/img/cart/tick.svg"></div>
  </div>
</template>

<script>
export default {
  name: "SelectButtom",
  props: {
    isSelect: {
      type: Boolean,
      default: false
    }
  }
}
</script>

<style scoped>
  .select-buttom {
    position: relative;
    margin-left: 10px;
  }
  .unselect {
    width: 20px;
    height: 20px;
    border: 2px solid #666;
    border-radius: 50%;
  }
  .select {
    width: 22px;
    height: 22px;
    background: red;
    border-radius: 50%;
    position: relative;
  }
  .select img {
    margin: auto;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
  }
  .unselect , .select {
    position: absolute;
    top: 50%;
    left: 50%;
    right: 50%;
    transform: translate(-50%,-50%);
  }
</style>