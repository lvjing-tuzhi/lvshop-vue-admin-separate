module.exports = {
    configureWebpack: {
        resolve: {
            alias: {
                'assets': '@/assets',
                'common': '@/common',
                'components': '@/components',
                'network': '@/network',
                'router': '@/router',
                'store': '@/store',
                'views': '@/views'
            }
        }
    },
    devServer: {
        // proxy: {
        //     '/api': {
        //         target: 'http://127.0.0.1:8080/',//跨域接口的地址
        //         logLevel:'debug',
        //         changeOrigin: true,
        //         xfwd:true,
        //         pathRewrite: {
        //             '^/api': ''
        //         }
        //     },
        // }
        port: 80
    }
}