<template>
  <div class="cart-list">
    <scroll class="scrollContent" ref="scroll" :probeClick="true">
      <div v-for="item in cartList" class="cart-goods">
        <select-buttom @click="cartListClick(item)" :is-select="item.checkSelect"/>
        <cart-list-item :cart-item="item" @imgLoad="imgLoad"/>
      </div>
    </scroll>
  </div>
</template>

<script>
import SelectButtom from "../../../components/common/selectbutton/SelectButtom";
import CartListItem from "./CartListItem";
import Scroll from "../../../components/common/scroll/Scroll";
import {debounce} from "../../../common/utils";
import {mapGetters} from "vuex";

export default {
  name: "CartList",
  components: {Scroll, CartListItem, SelectButtom},
  props: {
    cartList: {
      type: Array,
      default: []
    }
  },
  computed: {
    ...mapGetters(['isCartListSelect'])
  },
  data() {
    return {
      refresh: null,
    }
  },
  mounted() {
    this.refresh = debounce(this.$refs.scroll.refresh)
  },
  methods: {
    cartListClick(item) {
      item.checkSelect = !item.checkSelect
      this.$store.commit('changeCartSelect',item)
    },
    imgLoad() {
      this.refresh()
    }
  }
}
</script>

<style scoped>
  .cart-list{

  }
  .cart-goods {
    display: flex;
    justify-content: space-around;
    padding: 6px 0;
    border-bottom: 1px solid #ccc;
  }
  .scrollContent {
    height: calc( 100vh - 37px - 46px - 34px);
  }
</style>