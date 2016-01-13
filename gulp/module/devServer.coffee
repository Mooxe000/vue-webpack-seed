echo = console.log
dd = require 'ddeyes'
_ = require 'lodash'
webpack = require 'webpack'
WebpackDevServer = require 'webpack-dev-server'
webpackConfig = require '../../webpack/base.conf'

class devServer
  constructor: ->
    myConfig = _.clone webpackConfig
    myConfig.devtool = 'eval'
    myConfig.debug = true
    myConfig.plugins.push(
      new webpack.optimize.OccurenceOrderPlugin()
      new webpack.HotModuleReplacementPlugin()
      new webpack.NoErrorsPlugin()
    )

    devConf =
      stats: {
        colors: true
      }
      contentBase: 'static'
      historyApiFallback: false
      # publicPath: '/static/'
      noInfo: false
      lazy: false
      hot: true
      inline: true

    @server = new WebpackDevServer(
      (webpack myConfig)
      devConf
    )

    @

  start: ->
    @server.listen 8080, '0.0.0.0'
    , (err) -> dd err if err
      # throw new gutil.PluginError 'webpack-dev-server', err if err
  		# gutil.log '[webpack-dev-server]'
      # , 'http://0.0.0.0:8080/webpack-dev-server/index.html'
    @

  stop: ->
    @server.close()
    @

module.exports = ->
  GLOBAL.OwnData = {} unless GLOBAL.OwnData?
  unless GLOBAL.OwnData.devServerObj?
    GLOBAL.OwnData.devServerObj = new devServer()
  GLOBAL.OwnData.devServerObj
