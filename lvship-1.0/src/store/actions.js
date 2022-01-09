import {myLog} from "@/common/utils";

export default {
    addCart({state,commit} , payload) {
        return new Promise( (resolve) => {
            let accordant = state.cartList.find( item => item.iid === payload.iid)
            if(accordant) {
                commit('increaseCount',accordant)
                resolve('商品数量+1')
            }else {
                payload.count = 1
                payload.checkSelect = false
                commit('addCart',payload)
                resolve('添加商品成功')
            }
        })

    }
    ,
}
