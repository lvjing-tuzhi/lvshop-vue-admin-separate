import BackTop from "components/common/backtop/BackTop";

export const backTopMixin = {
    components: {
        BackTop,
    },
    data() {
        return{
            isBackShow:false,
        }
    },
    created() {
    },
    methods: {
        backTopClick() {
            this.$refs.scroll.scrollTo(0,0,500)
        },
        listenBackTop(position) {
            this.isBackShow = position > 1000

            // console.log(position>1000)
        }
    }

}
