Vue = require 'vue'
VueRouter = require 'vue-router'
App = require './App/main.vue'

app = Vue.extend {}

Vue.use VueRouter

routerMap = require './routers.coffee'
router = new VueRouter
  hashbang: true
  history: false
  saveScrollPosition: true
  transitionOnLoad: true
routerMap router

router.start app, '#app'
