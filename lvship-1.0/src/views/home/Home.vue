<template>
  <div class="home">

<!--    顶部导航栏-->
    <nav-bar class="home-nav-bar">
      <template v-slot:bar-center>
        <div>购物街</div>
      </template>
    </nav-bar>

    <!--      吸顶的流行、新款、精选控制栏-->
    <tab-control
        class="tab-control2"
        :tabControlItem="tabControlItem"
        v-show="isTabTop"
        ref="tabControl2"
        :style="tabControlWidth"
        @tabClick="tabClick"
    />

    <scroll
        class="content"
        ref="scroll"
        :probe-click="true"
        :probeType="3"
        @scrollHeight="scrollHeight"
        @scrillPullind="scrillPullind"
        :pull-up-load="true"
    >

      <!--    轮播图-->
      <swiper :swiper-item="bannerItem" @swiperLoad="swiperLoad" img-height="180px" img-width="100%"/>

      <!--    推荐-->
      <home-recommend :recommendItem="homeRecomendItem"/>

<!--      本周流行-->
      <HomeWeekRecommend/>

<!--      流行、新款、精选控制栏-->
      <tab-control :tabControlItem="tabControlItem" ref="tabControl" @tabClick="tabClick"/>

<!--      商品详情页-->

      <GoodList :goods="goodList" @goodLoad="goodLoad"/>
    </scroll>

<!--    混入-->
    <back-top v-show="isBackShow" @click="backTopClick"/>
  </div>
</template>

<script>
import NavBar from "components/common/navbar/NavBar";
import Swiper from "components/common/swiper/Swiper";
import HomeRecommend from "./childComps/HomeRecommend";
import HomeWeekRecommend from "./childComps/HomeWeekRecommend";
import TabControl from "../../components/content/tabControl/TabControl";
import GoodList from "../../components/content/goods/GoodList";

import Scroll from "../../components/common/scroll/Scroll";

import {debounce} from "../../common/utils";

import {getHomeBanner,getHomeWeek} from "../../network/home";
// import {getHomeMultidata, getHomeGoods} from "../../network/home";

import{backTopMixin} from "../../common/mixin";

export default {
  name: "Home",
  components: {
    NavBar,
    Swiper,
    HomeRecommend,
    HomeWeekRecommend,
    TabControl,
    GoodList,
    Scroll,
  },
  mixins: [backTopMixin],
  computed: {
    goodList() {
      return this.goods[this.goodsCurrentType].list
    }
  },
  data() {
    return {
      bannerItem: [],
      homeRecomendItem: [],
      tabControlItem: ['流行','新款','精选'],
      isTabTop:false,
      tabControlWidth:'',
      goods: {
        pop: { page: 0, list: [] },
        new: { page: 0, list: [] },
        sell: { page: 0, list: [] },
      },
      goodsCurrentType:'pop',
      refresh:null
    }
  },
  created() {
    this.getHomeMultidata()
    // this.getHomeGoods('pop')
    // this.getHomeGoods('new')
    // this.getHomeGoods('sell')
  },
  mounted() {
    this.tabControlWidth = 'width:'+this.$refs.tabControl.$el.offsetWidth+'px;'
    // 防抖动函数
    this.refresh = debounce(this.$refs.scroll.refresh)
  },
  methods: {
    swiperLoad() {
      this.refresh()
    },
    scrollHeight(position) {
      let p = -position.y
      this.isTabTop = this.$refs.tabControl.$el.offsetTop < p
      this.listenBackTop(p)
    },
    scrillPullind() {
      this.getHomeGoods(this.goodsCurrentType)
    },
    tabClick(index) {
      this.$refs.tabControl.currentIndex = index
      this.$refs.tabControl2.currentIndex = index
      switch (index) {
        case 0 : this.goodsCurrentType = 'pop'; break
        case 1 : this.goodsCurrentType = 'new'; break
        case 2 : this.goodsCurrentType = 'sell'; break
      }
    },
    goodLoad() {
      this.refresh()
    },
    /**
     *网络请求
     * */
    getHomeMultidata() {

      // 获得轮播图
      getHomeBanner().then( res => {
        this.bannerItem = res.result
      })

      //获得本周推荐
      getHomeWeek().then( res => {
        this.homeRecomendItem = res.result
        console.log(this.homeRecomendItem);
      })

      // getHomeMultidata().then( res => {
      //   this.bannerItem = res.data.banner.list
      //   this.homeRecomendItem = res.data.recommend.list
      // })
    },
    getHomeGoods(type) {
      const page = this.goods[type].page + 1;
      getHomeGoods(type,page).then( res => {
        this.goods[type].list.push(...res.data.list);
        this.goods[type].page += 1;
      });
    },
  }
}
</script>

<style scoped>
.home {
  height: 100vh;
}
.content {
  height: calc(100vh - 36px - 47px);
  overflow: hidden;
}
.tab-control2 {
  position: fixed;
  top: 37px;
  left: 0;
  background-color: #fff;
  z-index: 999;
}
</style>