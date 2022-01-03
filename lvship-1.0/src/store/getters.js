
export default {
    cartList: state => {return state.cartList},
    cartListCount: state => {return state.cartList.length},
    isCartListSelect: state => {return state.cartList.checkSelect},
    cartSelectCount: state => {
        let temp = state.cartList.filter( item => {
            return item.checkSelect
        } )
        if(temp.length > 0){
            return temp.reduce( (pre , cur) => {return pre+cur.count} ,0)
        }else {
            return 0
        }

    },
    cartAllSelect: state => {
        let cart = state.cartList
        if(cart.length == 0) return false
        for (const c of cart) {
            console.log(c.checkSelect)
            if(!c.checkSelect) return false
        }
        return true
    }
}