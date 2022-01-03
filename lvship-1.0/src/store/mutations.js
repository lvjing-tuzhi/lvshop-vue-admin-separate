export default {
    addCart(state,payload) {
        state.cartList.push(payload)
    },
    increaseCount(state,payload) {
        payload.count++
    },
    changeCartSelect(state,payload) {
        state.cartList.filter( item => {item.iid == payload.iid} ).checkSelect = !payload.checkSelect
    },
    cartAllSelect(state,payload) {
        let b = !payload
        for (const i of state.cartList) {
            i.checkSelect = b
        }
    }
}