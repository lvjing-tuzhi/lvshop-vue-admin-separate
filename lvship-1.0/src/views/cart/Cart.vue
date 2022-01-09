<template>
  <div class="cart">
    <nav-bar>
      <template v-slot:bar-center>
        <div>购物车({{cartListCount}})</div>
      </template>
    </nav-bar>
    <cart-list :cart-list="cartList"/>
    <cart-tool @buySucceed="buySucceed"/>
  </div>
</template>

<script>
import {getShopCart,cartOrder} from "@/network/cart";
import {getCookie, myLog} from "@/common/utils";
import {USERID} from "@/common/constant";
import {mapGetters} from "vuex"
import NavBar from "../../components/common/navbar/NavBar";
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
    ...mapGetters(['cartListCount','cartList','selectedCart'])
  },
  created() {
    this.getShopCart()
  },
  methods: {
    getShopCart() {
      let productId = getCookie(USERID)
      if (productId == "") {
        alert("您没登录，请先登录")
        this.$router.push('/profile')
      }else {
        getShopCart(productId).then( res => {
          let shopCart = res.result
          this.$store.commit("clearCart")
          myLog("shopCart",res)
          for (let shopCartItem of shopCart) {
            shopCartItem = new cartOrder(shopCartItem)
            this.$store.dispatch('addCart',shopCartItem)
          }
        })
      }

    },
    buySucceed() {
      this.getShopCart()
    }
  }
}
</script>

<style scoped>
  .cart {
    /*margin-top: 37px;*/
  }
</style>
