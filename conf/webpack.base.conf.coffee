path = require 'path'
HtmlWebpackPlugin = require 'html-webpack-plugin'
# ExtractTextPlugin = require 'extract-text-webpack-plugin'

module.exports =
  entry:
    app: [
      'webpack-dev-server/client?http://0.0.0.0:8080'
      'webpack/hot/dev-server'
      './src/main.coffee'
    ]
  output:
    path: path.resolve __dirname, '../dist/static'
    publicPath: '/'
    filename: 'static/[name].js'
  plugins: [
    new HtmlWebpackPlugin
      # filename: '../../index.html'
      template: path.join __dirname, '../src/index.jade'
    # new ExtractTextPlugin 'styles.css'
  ]
  resolve:
    extensions: [
      ''
      '.coffee'
      '.jade'
      '.js'
      '.vue'
    ]
    alias:
      src: path.resolve __dirname, '../src'
  module:
    loaders: [
      {
        test: /\.vue$/
        loader: 'vue'
      }
      {
        test: /\.jade$/
        loader: 'jade-loader'
      }
      {
        test: /\.coffee$/
        loader: 'coffee-loader'
      }
      {
        test: /\.js$/
        loader: 'babel!eslint'
        exclude: /node_modules/
      }
      # {
      #   test: /\.css$/
      #   loader: ExtractTextPlugin.extract 'style-loader', 'css-loader'
      # }
      {
        test: /\.json$/
        loader: 'json'
      }
      {
        test: /\.(png|jpg|gif|svg)$/
        loader: 'url'
        query:
          limit: 10000
          name: '[name].[ext]?[hash]'
      }
    ]
