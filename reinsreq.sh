#!/usr/bin/env bash

cwd="$(cd -P -- "$(dirname -- "$0")" && pwd -P)"

set -e

cd $cwd

npm install --save-dev \
  webpack webpack-dev-server

npm install --save-dev \
  babel-loader babel-core \
  babel-plugin-transform-runtime babel-preset-es2015 \
  babel-runtime@^5.8.0

npm install --save-dev \
  vue-html-loader css-loader vue-style-loader \
  vue-hot-reload-api vue-loader

npm install --save-dev \
  coffee-script coffee-loader \
  jade jade-loader \
  stylus stylus-loader \
  cson json-loader \
  file-loader url-loader \
  template-html-loader \
  html-webpack-plugin@^2.0.0 \
  style-loader extract-text-webpack-plugin

npm install --save vue
