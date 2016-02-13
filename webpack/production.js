var loaders = require("./loaders");
var HtmlWebpackPlugin = require('html-webpack-plugin');
var webpack = require('webpack');

module.exports = {
  entry: './src/app.ts',
  output: {
    path: './public',
    filename: 'js/bundle.js',
    hash: true
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
    }),
    new webpack.optimize.UglifyJsPlugin({
      warning: false,
      mangle: true,
      comments: false
    })
  ]
}
