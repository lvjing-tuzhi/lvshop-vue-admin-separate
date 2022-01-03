<template>
  <div class="good-list">
    <good-list-item v-for="item in goods" :goodListItem="item" :key="goods.iid" @goodLoad="goodLoad"/>
  </div>
</template>

<script>
import GoodListItem from "./GoodListItem";
export default {
  name: "GoodList",
  components: {
    GoodListItem
  },
  props: {
    goods: {
      type: Object,
      default() {
        return {}
      }
    }
  },
  created() {
  },
  methods: {
    goodLoad() {
      this.$emit('goodLoad')
    },
  }
}
</script>

<style scoped>
  .good-list {
    /*width: 100vh;*/
    /*height: 100vh;*/
    display: flex;
    flex-wrap: wrap;
    justify-content: space-around;
  }
</style>