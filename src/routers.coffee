module.exports = (router) ->
  router.map
    '/':
      name: 'home'
      component: require './App/app.vue'

    '*': # 404
      component: require './App/app.vue'
