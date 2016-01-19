#!/usr/bin/env bash

cwd="$(cd -P -- "$(dirname -- "$0")" && pwd -P)"

set -e

cd $cwd

cnpm install --save-dev \
  webpack webpack-dev-server

cnpm install --save-dev \
  babel-loader babel-core \
  babel-plugin-transform-runtime babel-preset-es2015 \
  babel-runtime@^5.8.0

cnpm install --save-dev \
  vue-html-loader css-loader vue-style-loader \
  vue-hot-reload-api vue-loader

cnpm install --save-dev \
  coffee-script coffee-loader \
  jade jade-loader \
  stylus stylus-loader \
  cson json-loader \
  file-loader url-loader \
  template-html-loader \
  html-webpack-plugin@^2.0.0 \
  style-loader extract-text-webpack-plugin

cnpm install --save-dev \
  lodash \
  ddeyes build-module-task \
  gulp gulp-util run-sequence \
  # gulp-sequence

cnpm install --save vue
