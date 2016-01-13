module.exports =
  data: ->
    count: 0

  ready: ->
    @handle = setInterval(
      (=> @count++)
      1000
    )

  destroyed: ->
    clearInterval @handle
