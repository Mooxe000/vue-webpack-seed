# echo = console.log
# gulpSequence = require 'gulp-sequence'
runSequence = require 'run-sequence'

module.exports = ->

  # echo 'Hello World!!!'

  runSequence 'startDevServer', 'watch'
  # runSequence 'startDevServer'
