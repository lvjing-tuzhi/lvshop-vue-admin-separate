<template>
  <div class="detail-bottom">
    <div class="detail-bottom-left">
      <div>
        <div class="icon customer"></div>
        客服
      </div>
      <div>
        <div class="icon store"></div>
        店铺
      </div>
      <div>
        <div class="icon collect"></div>
        收藏
      </div>
    </div>
    <div class="detail-bottom-right">
      <div class="add-cart" @click="addCart">加入购物车</div>
      <div class="purchase">购买</div>
    </div>
  </div>
</template>

<script>
export default {
  name: "DetailBottom",
  methods: {
    addCart() {
      this.$emit('addCart')
    }
  }
}
</script>

<style scoped>
.detail-bottom {
  display: flex;
  justify-content: space-between;
  position: fixed;
  bottom: 0;
  left: 0;
  right: 0;
  z-index: 999;
  background: #fff;
}
.detail-bottom-left {
  flex: 1;
  display: flex;
  justify-content: space-around;
}
.detail-bottom-left div {
  margin: auto;
  font-size: 12px;
}
.detail-bottom-right {
  flex: 1;
  display: flex;
}
.icon {
  width: 22px;
  height: 22px;
  /*0:偏移量 0/100%：大小改变至background所在元素的100%*/
  background: url("../../../assets/img/detail/detail_bottom.png") 0 0/100%;
  margin: 2px 0 4px 0;
}
.customer {
  background-position: 0 98px;
}
.store {
  background-position: 0 52px;
}
.collect {
  background-position: 0 0;
}
.add-cart {
  background: #ffe817;
  color: #333;
  font-size: 12px;
  line-height: 46px;
  padding: 0 8px;
  flex: 1;
  text-align: center;
}
.purchase {
  background: #f69;
  font-size: 12px;
  line-height: 46px;
  padding: 0 8px;
  flex: 1;
  text-align: center;
  color: #fff;
}
</style>