<template>
  <div class="recommend-item">
    <a :href="link">
      <img :src="img"/>
      <div>{{title}}</div>
    </a>

  </div>
</template>

<script>
export default {
  name: "HomeRecommendItem",
  props: {
    img: {
      type: String,
      default: ''
    },
    title: {
      type: String,
      default: ''
    },
    link: {
      type: String,
      default: ''
    }
  }
}
</script>

<style scoped>
  .recommend-item img {
    width: 60px;
    height: 60px;
  }
  .recommend-item a {
    color: #666666;
  }
  .recommend-item a div {
    font-size: 10px;
    text-align: center;
  }
</style>