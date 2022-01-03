<template>
  <div class="recommend">
    <div v-for="item in recommendItem">
      <home-recommend-item :img="item.image" :title="item.title" :link="item.link"></home-recommend-item>
    </div>
  </div>
</template>

<script>
import HomeRecommendItem from "./HomeRecommendItem";

export default {
  name: "HomeRecommend",
  components: {
    HomeRecommendItem
  },
  props: {
    recommendItem: {
      type: Array,
      default: []
    }
  }
}
</script>

<style scoped>
  .recommend {
    display: flex;
    justify-content: space-between;
    padding: 20px 14px;
    border-bottom: 10px solid #eee;
  }
</style>