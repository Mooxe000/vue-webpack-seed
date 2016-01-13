CompA = require '../components/A/a.vue'
CompB = require '../components/B/b.vue'
Counter = require '../components/Counter/counter.vue'

module.exports =

  data: ->
    msg: 'Hello from vue-loader!'

  components:
    CompA: CompA
    CompB: CompB
    Counter: Counter
