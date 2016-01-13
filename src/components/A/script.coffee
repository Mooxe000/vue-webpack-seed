{getMessage} = require '../../services/message.coffee'

module.exports =
  data: ->
    msg: getMessage()
