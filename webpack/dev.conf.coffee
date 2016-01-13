config = require './base.conf'

config.devtool = 'eval-source-map'

config.devServer =
  host: '0.0.0.0'
  noInfo: false
  historyApiFallback: false

module.exports = config
