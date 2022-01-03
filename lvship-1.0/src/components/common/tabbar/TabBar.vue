<template>
  <div id="tab-bar">
    <slot></slot>
  </div>
</template>

<script>


export default {
  name: "TabBar",
  components: {
  }
}
</script>

<style scoped>
#tab-bar {
  position: fixed;
  bottom: 0;
  left: 0;
  right: 0;
  display: flex;
  justify-content: space-around;
  background: #e8e8e8;
  box-shadow: 0 -1px 1px rgb(100 100 100 / 10%);
}
</style>