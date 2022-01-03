<template>
  <div class="cart-list-item">
    <div class="cart-item-img">
      <img :src="cartItem.img" @load="imgLoad">
    </div>
    <div class="cart-item-content">
      <div class="cart-item-title">{{cartItem.title}}</div>
      <div class="cart-item-goods-content">{{cartItem.desc}}</div>
      <div class="cart-item-price">
        ￥{{cartItem.newPrice}}
        <span>x{{cartItem.count}}</span>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "CartListItem",
  props: {
    cartItem: {
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
  .cart-list-item {
    display: flex;
    margin-left: 10px;
  }
  .cart-item-img img {
    width: 68px;
    height: 85px;
    border-radius: 8%;
  }
  .cart-item-content {
    padding: 0 10px;
    box-sizing: border-box;
  }
  .cart-item-title ,.cart-item-goods-content {
    color: #333;
    font-size: 14px;
    width: 198px;
    overflow: hidden;
    white-space: nowrap;
    text-overflow: ellipsis;
  }
  .cart-item-goods-content {
    color: #666;
    font-size: 10px;
    margin-top: 20px;

  }
  .cart-item-price {
    color: #ff4500;
    font-size: 14px;
    margin-top: 14px;
  }
  .cart-item-price span {
    color: #333;
    margin-left: 84px;
  }
</style>