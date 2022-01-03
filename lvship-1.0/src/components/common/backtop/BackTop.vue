<template>
  <div class="back-top">
    <img src="~assets/img/common/top.png">
  </div>
</template>

<script>
export default {
  name: "BackTop"
}
</script>

<style scoped>
.back-top {
  position: absolute;
  bottom: 56px;
  right: 2px;
  z-index: 999;
}
.back-top img {
  width: 40px;
}
</style>