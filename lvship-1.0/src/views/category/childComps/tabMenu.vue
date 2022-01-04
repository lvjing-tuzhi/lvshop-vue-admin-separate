<template>
  <scroll class="content" ref="scroll" :probe-click="true">
    <div
          class="tabMenuItem"
          v-for="(item,index) in category"
          :key="item.id"
          @click="menuItemClick(index,item)"
          :class="{current:currentMenu==index}" >
        {{item.name}}
      </div>
  </scroll>
</template>

<script>
import Scroll from "../../../components/common/scroll/Scroll";
import {getCategory} from "../../../network/category";

export default {
  name: "tabMenu",
  components: {Scroll},
  data() {
    return {
      category: {},
      currentMenu: 0,
    }
  },
  created() {
    this.getCategory()
  },
  methods: {
    menuItemClick(index,item) {
      this.currentMenu = index
      // 点击的时候把一级分类的id发送给父组件
      this.$emit('maitKey',item.id)
    },
    //获取一级分类
    getCategory() {
      getCategory().then( res => {
        this.category = res.result
      } )
    }
  }
}
</script>

<style scoped>
  .content {
    width: 80px;
    height: calc( 100vh - 37px - 46px);
    background: #f6f6f6;
    overflow: hidden;

  }
  .tabMenuItem,.content{
    color: #333;
    font-size: 12px;
    text-align: center;
    padding: 10px 0;

  }
  .current {
    background: #fff;
    color: #ff5777 !important;
    border-left:3px solid #ff5777;
    font-weight: 600;
  }
</style>