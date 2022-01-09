<template>
  <div class="detail">
    <detail-nav-bar @detail-bar-click="detailBarClick" ref="detailNavBar"/>
    <scroll class="content" ref="scroll" :probeType="3" @scrollHeight="detailScroll" :probe-click="true">
<!--      得到轮播图-->
      <swiper :swiper-item="goodsBanner" h="240px" img-width="100%" @swiperLoad="detailLoad"/>
<!--      得到商品信息-->
      <detail-base-info :goods="goods"/>
<!--      得到商店信息-->
      <detail-shop-info :shop="goodsShop"/>
<!--      <detail-goods-info :detail-info="detailInfo" @goodsInfoLoad="detailLoad" class="goods-info"/>-->
<!--       得到商品参数-->
      <detail-param-info :param-info="paramInfo" ref="param"/>
<!--      得到用户评论-->
      <detail-comment :comment-info="commentInfo" ref="comment"/>
      <good-list :goods="detailRecommend" ref="recommend" @goodLoad="detailLoad" @newProductId="newProductId"/>
    </scroll>
<!--    加入购物车-->
    <detail-bottom @addCart="addCart"/>
    <toast :is-show="toastShow" :message="toastMessage"/>
  </div>
</template>

<script>
import {getDetail,Goods,getGoodShop,getComment,addOrder,GoodsParam,getRecommend} from "../../network/detail";
import {debounce,StringToArray,myLog,getCookie} from "../../common/utils";
import {USERID} from "@/common/constant";
import DetailNavBar from "./childComps/DetailNavBar";
import Scroll from "../../components/common/scroll/Scroll";
import Swiper from "../../components/common/swiper/Swiper";
import DetailBottom from "./childComps/DetailBottom";
import DetailBaseInfo from "./childComps/DetailBaseInfo";
import DetailShopInfo from "./childComps/DetailShopInfo";
import DetailGoodsInfo from "./childComps/DetailGoodsInfo";
import DetailParamInfo from "./childComps/DetailParamInfo";
import DetailComment from "./childComps/DetailComment";
import GoodList from "../../components/content/goods/GoodList";
import Toast from "../../components/common/toast/Toast";

export default {
  methods: {
    // 从子组件获取新的点击要跳转到商品id
    newProductId(data) {
      // 重新赋值
      this.goodId = data
      this.getDetail(this.goodId)
      // 位置跳到顶部
      this.detailBarClick(0)
    },
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
      //商品id
      this.product.iid = this.goods.id
      this.product.productId = this.goods.id
      myLog("detail-goods",this.goods)
      this.product.img = this.goods.covers
      //订单名字
      this.product.name = this.goods.title
      this.product.title = this.goods.title
      this.product.desc = this.goods.desc
      this.product.price = this.goods.newPrice.substr(1)
      this.product.newPrice = this.goods.newPrice
      //订单颜色
      this.product.color = '红色'
      //商品是否支付,-1购物车,0未支付，1支付
      this.product.isPay = '-1'
      //商品尺寸
      this.product.size = 'M'
      // 用户id
      if (getCookie(USERID) != '') {
        this.product.userId = getCookie(USERID)

        myLog('已登录',getCookie(USERID))
        addOrder(this.product).then( res => {
          if (res.msg == "添加成功") {
            //添加到vuex中
              alert("加入成功")
            // this.$store.dispatch('addCart',this.product).then( res => {
            //   this.toastMessage = res
            //   this.toastShow = true
            //   setTimeout( () => {
            //     this.toastShow = false
            //   },500)
            // })
          }
        })

      }else {
        console.log('没登录');
        alert("您还没登录，请登录")
        this.$router.push('/profile')
      }

    },
    getDetail(iid) {
      getDetail(iid).then( res => {
        let data = res.result
        this.iid = data.id
        this.topImageOne = data.covers
        //得到轮播图
        this.goodsBanner = StringToArray(data.photos)
        //得到商品线性信息
        this.goods = new Goods(data)
        // 得到商店信息
        this.getShop(data.shopId)
        this.detailInfo = data
        // 得到用户评论
        this.getComment(data.id)
        //得到推荐商品
        this.getRecommend()
        // this.paramInfo = new GoodsParam(data.itemParams.info,data.itemParams.rule)
      })
    },

    //得到评论
    getComment(productId) {
      getComment(productId).then( res => {
        this.commentInfo = res.result
      })
    },
    //得到商店信息
    getShop(id) {
      getGoodShop(id).then( res => {
        this.goodsShop = res.result
      })
    },
    getRecommend() {
      getRecommend("sell").then( res => {
        this.detailRecommend = res.result
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
  },
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
