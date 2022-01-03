import {createStore} from "vuex";
import mutations from "./mutations";
import actions from "./actions";
import getters from "./getters";

// 创建store对象
const store = createStore({
    state() {
        return {
            cartList: []
        }
    },
    // 类似于事件，同来修改state
    mutations,
    // 类似于mutation但是不能用来修改state,用来提交mutation
    actions,
    // 类似于计算属性获取state的状态或值
    getters
})

export default store