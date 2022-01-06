<template>
  <div class="detail-navbar">
    <NavBar fc="#666" fz="8" bgc="#fff">
      <template v-slot:bar-left>
        <div class="back" @click="backClick"><img src="~assets/img/common/back.svg"></div>
      </template>
      <template v-slot:bar-center>
        <div class="detail-bar-center">
          <div v-for="(item,index) in detailTitle" @click="detailTitleClick(index)" :class="{active : index == detailCurrent}">
            {{item}}
          </div>
        </div>
      </template>
    </NavBar>
  </div>
</template>

<script>
import NavBar from "../../../components/common/navbar/NavBar";

export default {
  name: "DetailNabBar",
  components: {
    NavBar,
  },
  computed: {
  },
  data() {
    return {
      detailTitle: ['商品','参数','评论','推荐'],
      detailCurrent: 0,
    }
  },
  methods: {
    backClick() {
      console.log("点击啦");
      this.$router.back()
    },
    detailTitleClick(index) {
      this.detailCurrent = index
      this.$emit('detailBarClick',index)
    }
  },
}
</script>

<style scoped>
.detail-navbar {
}
.detail-bar-center {
  display: flex;
}
.detail-bar-center div {
  padding: 0px 10px;
}
.back {
  margin-top: 6px;
}
.active {
  color: #ff5777;
}
</style>
