import { createApp } from 'vue'
import App from './App.vue'
import router from "./router"
import store from "./store";
import ElementPlus from 'element-plus'
import 'element-plus/dist/index.css'

const app = createApp(App)

// 通过原型添加一个事件总线
app.config.globalProperties.$bus = app

app.use(router).use(ElementPlus).use(store).mount('#app')
