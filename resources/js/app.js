require('./bootstrap');

import Vue from 'vue'
import VueRouter from 'vue-router'
Vue.use(VueRouter)

import routes from './routes';

const router = new VueRouter({
    mode: 'history',
    routes: routes,
});

import App from './views/Main/App'

const app = new Vue({
    el: '#app',
    components: { App },
    router,
});
