<template>
  <div class="tab-control">
    <div v-for="(item,index) in tabControlItem" :class="{'active' : index == currentIndex}" @click="tabClick(index)">{{item}}</div>
  </div>
</template>

<script>
export default {
  name: "TabControl",
  props: {
    tabControlItem: {
      type: Array,
      default: []
    },
  },
  data() {
    return {
      currentIndex:0
    }
  },
  methods: {
    tabClick(index) {
      this.currentIndex = index
      this.$emit('tabClick',index)
    }
  }
}
</script>

<style scoped>
  .tab-control {
    display: flex;
    justify-content: space-around;
    font-size: 10px;
  }
  .tab-control div {
    padding: 4px;
  }
  .active {
    color: #ff5777;
    border-bottom: 3px solid #ff5777;

  }
</style>