# vue-webpack-seed

> vue webpack seed

## Build Setup

``` bash
# install dependencies
npm install

# serve with hot reload at localhost:8080
npm run dev

# build for production with minification
# npm run build

# run unit tests
# npm test
```
## require lib

* webpack
* webpack-dev-server

* vue-loader
  * vue-html-loader
  * css-loader
  * vue-style-loader
  * \#babel\#
    * babel-loader
    * babel-core
    * babel-plugin-transform-runtime
    * babel-preset-es2015
    * babel-runtime
  * vue-hot-reload-api

* style-loader
* extract-text-webpack-plugin

* coffee-script
* coffee-loader

* jade
* jade-loader

* stylus
* stylus-loader

* cson
* json-loader

* file-loader
* url-loader

<!-- * inject-loader -->

``` bash
cnpm install --save-dev \
  webpack webpack-dev-server

cnpm install --save-dev \
  babel-loader babel-core \
  babel-plugin-transform-runtime babel-preset-es2015 babel-runtime@^5.8.0

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
  html-webpack-plugin
```
