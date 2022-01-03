<template>
  <div class="wrapper" ref="wrapper">
    <div class="content">
     <slot></slot>
    </div>
  </div>
</template>

<script>
import BScroll from 'better-scroll'

export default {
  name: "Scroll",
  props: {
    probeClick: {
      type: Boolean,
      default: false
    },
    probeType: {
      type: Number,
      default: 0
    },
    pullUpLoad: {
      type: Boolean,
      default: false
    }
  },
  data() {
    return {
      scroll:null
    }
  },
  mounted() {
    this.$nextTick(() => {
      this.scroll = new BScroll(this.$refs.wrapper, {
        // 点击
        click: this.probeClick,
        // 滚动
        probeType: this.probeType,
        // 加载更多
        pullUpLoad: this.pullUpLoad,
        observeDOM: true,
      })

      if(this.probeType != 0){
        this.scroll.on('scroll', (position) => {
          this.$emit('scrollHeight',position)
        })
      }
      if(this.pullUpLoad) {
        this.scroll.on('pullingUp',() => {
          this.$emit('scrillPullind')
          this.scroll. finishPullUp()
        })
      }
    })
  },
  methods: {
    refresh() {

      this.scroll.refresh()
    },
    scrollTo(x,y,delay=500) {
      this.scroll.scrollTo(x,y,delay)
    }
  }
}
</script>

<style scoped>
</style>