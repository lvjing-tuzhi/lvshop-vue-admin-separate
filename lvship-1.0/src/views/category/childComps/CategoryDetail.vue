<template>

    <scroll class="content" :probe-click="true" ref="scroll">
      <div class="category-detail">
        <category-detail-item v-for="item in categoryDetail" :detai-item="item" :key="item.image" @imgLoad="imgLoad"/>
      </div>
    </scroll>

</template>

<script>
import CategoryDetailItem from "./CategoryDetailItem";
import Scroll from "../../../components/common/scroll/Scroll";
import {debounce} from "../../../common/utils";

export default {
  name: "CategoryDetail",
  components: {Scroll, CategoryDetailItem},
  props: {
    categoryDetail: {
      type: Object,
      default: {}
    }
  },
  data() {
    return {
      refresh: null
    }
  },
  mounted() {
    this.refresh = debounce(this.$refs.scroll.refresh)
  },
  methods: {
    imgLoad() {
      this.refresh()
    }
  }
}
</script>

<style scoped>
  .category-detail {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    padding: 10px 16px;
  }
  .content {
    width: calc( 100% - 80px );
    height: calc( 100vh - 37px - 46px);
  }
</style>