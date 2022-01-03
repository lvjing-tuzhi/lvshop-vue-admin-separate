<template>
  <div class="cart">
    <nav-bar>
      <template v-slot:bar-center>
        <div>购物车({{cartListCount}})</div>
      </template>
    </nav-bar>
    <cart-list :cart-list="cartList"/>
    <cart-tool/>
  </div>
</template>

<script>
import NavBar from "../../components/common/navbar/NavBar";
import {mapGetters} from "vuex"
import CartList from "./childComps/CartList";
import CartTool from "./childComps/CartTool";
export default {
  name: "Cart",
  components: {CartTool, CartList, NavBar},
  data() {
    return {
      cartCount: 0
    }
  },
  computed: {
    ...mapGetters(['cartListCount','cartList'])
  },
  created() {
  }
}
</script>

<style scoped>
  .cart {
    /*margin-top: 37px;*/
  }
</style>