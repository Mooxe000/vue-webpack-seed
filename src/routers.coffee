module.exports = (router) ->

  router.map
    '/':
      name: 'home'
      component: require './App/main.vue'

  router.redirect

    '*': '/'
