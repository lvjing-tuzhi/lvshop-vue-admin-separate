<template>
  <div class="detail">
    <detail-nav-bar @detail-bar-click="detailBarClick" ref="detailNavBar"/>
    <scroll class="content" ref="scroll" :probeType="3" @scrollHeight="detailScroll">
      <swiper :swiper-item="goodsBanner" h="240px" img-width="100%" @swiperLoad="detailLoad"/>
      <detail-base-info :goods="goods"/>
      <detail-shop-info :shop="goodsShop"/>
      <detail-goods-info :detail-info="detailInfo" @goodsInfoLoad="detailLoad" class="goods-info"/>
      <detail-param-info :param-info="paramInfo" ref="param"/>
      <detail-comment :comment-info="commentInfo" ref="comment"/>
      <good-list :goods="detailRecommend" ref="recommend" @goodLoad="detailLoad"/>
    </scroll>
    <detail-bottom @addCart="addCart"/>
    <toast :is-show="toastShow" :message="toastMessage"/>
  </div>
</template>

<script>
// import {getDetail} from "../../network/detail";
import {getDetail,Goods,GoodsParam,getRecommend} from "../../network/detail";
import DetailNavBar from "./childComps/DetailNavBar";
import Scroll from "../../components/common/scroll/Scroll";
import Swiper from "../../components/common/swiper/Swiper";
import DetailBottom from "./childComps/DetailBottom";
import DetailBaseInfo from "./childComps/DetailBaseInfo";
import DetailShopInfo from "./childComps/DetailShopInfo";
import {debounce,photosToArray} from "../../common/utils";
import DetailGoodsInfo from "./childComps/DetailGoodsInfo";
import DetailParamInfo from "./childComps/DetailParamInfo";
import DetailComment from "./childComps/DetailComment";
import GoodList from "../../components/content/goods/GoodList";
import Toast from "../../components/common/toast/Toast";

export default {
  name: "Detail",
  components: {
    Toast,
    GoodList,
    DetailComment,
    DetailParamInfo,
    DetailGoodsInfo,
    DetailShopInfo,
    DetailBaseInfo,
    DetailBottom,
    DetailNavBar,
    Scroll,
    Swiper
  },
  data() {
    return {
      refresh: null,
      goodId: null,
      topType:[],
      goods: {},
      goodsBanner: [],
      goodsShop: [],
      detailInfo: {},
      paramInfo: {},
      commentInfo: {},
      detailRecommend: {},
      iid: '',
      product: {},
      topImageOne:'',
      toastMessage: '',
      toastShow: false,
    }
  },
  created() {
    this.goodId = this.$route.params.iid
    this.getDetail(this.goodId)
    // this.getRecommend()

  },
  mounted() {
    // 防抖动函数刷新
    this.refresh = debounce(this.$refs.scroll.refresh)
    //防抖动函数填充topType
    this.fullTopType = debounce(this.fullTopTypeF,600)
  },
  methods: {
    detailBarClick(index) {
      let temp = this.topType
      this.$refs.scroll.scrollTo(0,-this.topType[index]+37)
    },
    detailScroll(position) {
      let p = -position.y+37
      let temp = this.topType
      for(let i = 0; i < temp.length - 1; i++) {
          if(p >= temp[i] && p < temp[i+1]) {
          this.$refs.detailNavBar.detailCurrent = i
          }
      }
    },
    addCart() {
      this.product.iid = this.iid
      this.product.img = this.topImageOne
      this.product.title = this.goods.title
      this.product.desc = this.goods.desc
      this.product.newPrice = this.goods.realPrice
      this.$store.dispatch('addCart',this.product).then( res => {
        this.toastMessage = res
        this.toastShow = true
        setTimeout( () => {
          this.toastShow = false
        },500)
      })
    },
    getDetail(iid) {
      getDetail(iid).then( res => {
        let data = res.result
        this.iid = data.id
        this.topImageOne = data.covers
        this.goodsBanner = photosToArray(data.photos)
        // this.iid = iid
        // this.topImageOne = data.itemInfo.topImages[0]
        // this.goodsBanner = data.itemInfo.topImages
        this.goods = new Goods(data.itemInfo,data.columns,data.shopInfo.services)
        this.goodsShop = data.shopInfo
        this.detailInfo = data.detailInfo
        this.paramInfo = new GoodsParam(data.itemParams.info,data.itemParams.rule)
        // if (data.rate.cRate !== 0) {
          this.commentInfo = data.rate.list[0];
        // }
      })
    },
    getRecommend() {
      getRecommend().then( res => {
        this.detailRecommend = res.data.list
      })
    },
    detailLoad() {
      this.refresh()
      this.fullTopType()
    },
    fullTopTypeF() {
      this.topType = []
      this.topType.push(0)
      this.topType.push(this.$refs.param.$el.offsetTop)
      this.topType.push(this.$refs.comment.$el.offsetTop)
      this.topType.push(this.$refs.recommend.$el.offsetTop)
      this.topType.push(Number.MAX_VALUE)
    },
  }
}
</script>

<style scoped>
.content {
  height: calc(100vh - 36px - 47px);
  overflow: hidden;
}
.goods-info {
  /*position: relative;*/
}
</style>
