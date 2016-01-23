CompA = require '../components/A/main.vue'
CompB = require '../components/B/main.vue'
Counter = require '../components/Counter/main.vue'

module.exports =

  data: ->
    msg: 'Hello from vue-loader!'

  components:
    CompA: CompA
    CompB: CompB
    Counter: Counter
