gulp = require 'gulp'

module.exports = ->

  gulp.watch 'src/**/*', ['stopDevServer', 'startDevServer']
  # gulp.watch 'src/**/*', ['stopDevServer']
