path = require 'path'
HtmlWebpackPlugin = require 'html-webpack-plugin'
# ExtractTextPlugin = require 'extract-text-webpack-plugin'

module.exports =
  entry: './src/main.coffee'
  output:
    path: path.join __dirname, './dist'
    publicPath: '/'
    filename: 'dist/build.js'
  plugins: [
    new HtmlWebpackPlugin
      # filename: '../../index.html'
      template: path.join __dirname, '../src/index.jade'
    # new ExtractTextPlugin 'styles.css'
  ]
  # resolve:
  #   extensions:
  #     alias:
  #     src:
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
        exclude: /node_modules/
      }
      # {
      #   test: /\.js$/
      #   loader: 'babel!eslint'
      #   exclude: /node_modules/
      # }
      {
        test: /\.(png|jpg|gif)$/
        loader: 'url'
        query: {
          limit: 10000
          name: '[name].[ext]?[hash]'
        }
      }
    ]
