echo = console.log
dd = require 'ddeyes'
devServer = require '../module/devServer'

module.exports = ->

  server = devServer()
  server.start()
