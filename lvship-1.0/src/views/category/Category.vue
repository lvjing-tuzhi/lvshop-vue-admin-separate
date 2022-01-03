<template>
  <div class="category">
    <nav-bar>
      <template v-slot:bar-center>
        <div>商品分类</div>
      </template>
    </nav-bar>
    <div class="category-content">
      <tab-menu @maitKey="detailMaitKey"/>
      <category-detail :category-detail="categoryDetail"/>
    </div>

  </div>
</template>

<script>
import NavBar from "../../components/common/navbar/NavBar";
import TabMenu from "./childComps/tabMenu";
import CategoryDetail from "./childComps/CategoryDetail";
import {getSubcategory,getCategory} from "../../network/category";

export default {
  name: "Category",
  components: {CategoryDetail, TabMenu, NavBar},
  data() {
    return {
      categoryDetail:{},
    }
  },
  created() {
    this.getCategory()
  },
  mounted() {
  },
  methods: {
    detailMaitKey(maitKey) {
      this.getSubcategory(maitKey)
    },
    getSubcategory(maitKey) {
      console.log(maitKey);
      getSubcategory(maitKey).then( res => {
        this.categoryDetail = res.data.list
      })
    },
   getCategory() {
      let temp = 0
      getCategory().then( res => {
        let temp = res.data.category.list[0].maitKey
        console.log(this.oneCategory);
        this.getSubcategory(temp)
      })
    }
  }
}
</script>

<style scoped>
  .category-content {
    display: flex;
  }
</style>