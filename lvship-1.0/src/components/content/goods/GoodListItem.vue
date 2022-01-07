<template>
  <div class="good-list-item" @click="goodClick">
    <img :src="showImage" @load="goodLoad">
    <div class="good-title">{{goodListItem.name}}</div>
    <div class="good-price">
      {{goodListItem.price}}
      <span><img src="~/assets/img/common/collect.svg">{{goodListItem.cfav}}</span>
    </div>
  </div>
</template>

<script>
export default {
  name: "GoodListItem",
  props: {
    goodListItem:{
      type: Object,
      default() {
        return {}
      }
    }
  },
  computed: {
    showImage() {
      // return this.goodListItem.image || this.goodListItem.img || this.goodListItem.show.img
      return this.goodListItem.covers
    }
  },
  methods: {
    goodLoad() {
      this.$emit('goodLoad')
    },
    goodClick() {
      console.log('点击aa啦');
      this.$router.push('/detail/'+this.goodListItem.id)
    }
  }
}
</script>

<style scoped>
  .good-list-item img {
    width: 150px;
    height: 228px;
  }
  .good-title {
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    width: 150px;
    font-size: 10px;
  }
  .good-price {
    font-size: 12px;
    color: #ff5777;
    text-align: center;
    margin: 2px 2px 6px 0px;
  }
  .good-price span {
    color: #666;
    position: relative;
    padding-left: 18px;
  }
  .good-price span img{
    width: 12px;
    height: 12px;
    position: absolute;
    top: 50%;
    left: 20%;
    transform: translate(-50%,-50%);
  }
</style>
