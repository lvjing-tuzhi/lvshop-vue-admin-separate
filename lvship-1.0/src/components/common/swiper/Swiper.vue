<template>
  <div>
    <el-carousel trigger="click" :height="h">
      <el-carousel-item v-for="item in swiperItem" :key="item">
        <a :href="item.url"><img :src="swiperImg(item)" alt="" @load="swiperLoad" :style="imgStyle"></a>
      </el-carousel-item>
    </el-carousel>
  </div>
</template>

<script>
import {debounce} from "../../../common/utils";

export default {
  name: "Swiper",
  props: {
    h: {
      type: String,
      default: '180px'
    },
    imgWidth: {
      type: String,
      default: ''
    },
    imgHeight: {
      type: String,
      default:''
    },
    swiperItem: {
      type:Array,
      default: []
    }
  },
  computed: {
    imgStyle() {
      return 'width:'+this.imgWidth+';height:'+this.imgHeight
    },

  },
  methods: {
    swiperImg(item) {
      console.log(item);
      return item.position || item
    },
    swiperLoad() {
        this.$emit('swiperLoad')
    }
  }
}
</script>

<style scoped>
/*.el-carousel__item img{*/
/*  height: 180px;*/
/*}*/
</style>
