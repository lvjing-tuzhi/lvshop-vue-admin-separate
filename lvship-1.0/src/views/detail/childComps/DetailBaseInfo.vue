<template>
<!--  <div>{{goods}}{{goods.newPrice}}</div>-->
  <div v-if="goods !== undefined"
       class="base-info">
    <div class="info-title">{{goods.title}}</div>
    <div class="info-price">
      <span class="n-price">{{goods.newPrice}}</span>
      <span class="o-price">{{goods.oldPrice}}</span>
      <span v-if="goods.discount" class="discount">{{goods.discount}}折</span>
    </div>
    <div class="info-other">
      <span v-for="item in goods.columns">{{item}}</span>
<!--      <span>{{sales}}</span>-->
<!--      <span>收藏 {{goods.columns[1]}}</span>-->
<!--      <span>{{goods.columns[2]}} 时发货</span>-->
    </div>
    <div class="info-service">
      <span class="info-service-item" v-for="(item,index) in goods.services" :key="index">
<!--        <img v-if="goods.services[index-1].icon !== undefined" :src="goods.services[index-1].icon" alt="">-->
<!--        <span>{{goods.services[index-1].name}}</span>-->
        <span>{{item}}</span>
      </span>
    </div>
  </div>
</template>

<script>
import {myLog} from "@/common/utils";

export default {
  name: 'DetailBaseInfo',
  props: {
    goods: {
      type: Object,
      default() {
        return {}
      }
    }
  },
  computed: {
  }

}
</script>

<style scoped>
.base-info {
  margin:0 10px ;
}
.info-title {
  margin: 10px 0 10px;
  text-indent: 2em;
  color: #000;
  font-weight: 500;
}
.n-price {
  color: var(--color-high-text);
  font-size: 20px;
  padding-right: 5px;
}
.o-price {
  text-decoration: line-through;
  font-size: 14px;
}
.discount {
  position: relative;
  top: -5px;
  left: 5px;
  padding:3px 10px;
  border-radius: 8px;
  background-color: var(--color-high-text);
  color: #fff;
}
.info-other {
  padding: 20px 0 10px;
  display: flex;
  font-size: 12px;
  color: #ccc;
  border-bottom: 1px solid rgba(100,100,100,.1);
}
.info-other span {
  flex: 1;
}
.info-service {
  display: flex;
  justify-content: space-between;
  line-height: 60px;

}
.info-service-item img {
  width: 14px;
  height: 14px;
  position: relative;
  top: 2px;
}
.info-service-item span {
  font-size: 13px;
  color: #333;
}

</style>
