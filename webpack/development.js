var loaders = require("./loaders");
var HtmlWebpackPlugin = require('html-webpack-plugin');
var webpack = require('webpack');

module.exports = {
  entry: './src/app.ts',
  output: {
    path: './public',
    filename: 'js/bundle.js',
    devtoolModuleFilenameTemplate: '[resourcePath]',
    devtoolFallbackModuleFilenameTemplate: '[resourcePath]?[hash]'
  },
  resolve: {
    root: __dirname,
    extensions: ['', '.ts', '.js']
  },
  resolveLoader: {
    modulesDirectories: ["node_modules"]
  },
  module: {
    loaders: loaders
  },
  devtool: 'source-map',
  plugins: [
    new HtmlWebpackPlugin({
      template: './src/index.html',
      inject: 'body',
      hash: true
    }),
    new webpack.ProvidePlugin({
      $: 'jquery',
      jQuery: 'jquery',
      'window.jQuery': 'jquery',
      'window.jquery': 'jquery'
    })
  ]
}
