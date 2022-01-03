<template>
  <div class="item">
    <a :href="detaiItem.link" >
      <img :src="detaiItem.image" class="item-img" @load="imgLoad">
      <div class="title">{{detaiItem.title}}</div>
    </a>
  </div>
</template>

<script>
export default {
  name: "CategoryDetailItem",
  props: {
    detaiItem: {
      type: Object,
      default: {}
    }
  },
  methods: {
    imgLoad() {
      this.$emit('imgLoad')
    }
  }
}
</script>

<style scoped>
  a {
    background: #000;
    width: 30%;
  }
  .item {
    width: 30%;
  }
  .item-img {
    width: 80%;
    display: block;
    margin: auto;
  }
  .title {
    text-align: center;
    font-size: 10px;
    margin-top: 10px;
  }
</style>