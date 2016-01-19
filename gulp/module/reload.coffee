echo = console.log
dd = require 'ddeyes'
fs = require 'fs'
# devServer = require './devServer'

module.exports = (file) ->
  if file.type is 'changed'
    fileStr = fs.readFileSync file.path
    fs.writeFileSync file.path, fileStr
  else dd file

  # {server} = devServer()
  # {sockets} = server
  # server.sockWrite sockets, 'ok'

  return
