<template>
  <div class="cart-tool">
    <div class="cart-tool-left">
      <select-buttom class="select-buttom" :is-select="cartAllSelect" @click="allSelectClick"/>
      <span>全选</span>
      <span>合计</span>
    </div>
    <div class="cart-tool-right">去结算({{cartSelectCount}})</div>
  </div>
</template>

<script>
import SelectButtom from "../../../components/common/selectbutton/SelectButtom";
import {mapGetters} from "vuex";

export default {
  name: "CartTool",
  components: {SelectButtom},
  computed: {
    ...mapGetters(['cartSelectCount','cartAllSelect'])
  },
  methods: {
    allSelectClick() {
      console.log(this.cartAllSelect);
      this.$store.commit('cartAllSelect',this.cartAllSelect)
    }
  }
}
</script>

<style scoped>
  .cart-tool {
    height: 34px;
    display: flex;
    position: relative;
  }
  .select-buttom {
    margin-left: 18px;
  }
  .cart-tool-left {
    display: flex;
    background: #eee;
    flex: 1;
    font-size: 10px;
  }
  .cart-tool-left span {
    line-height: 34px;
    margin-left: 16px;
  }
  .cart-tool-right {
    background: #ff5777;
    padding: 0 22px;
    font-size: 10px;
    text-align: center;
    line-height: 34px;
  }
</style>