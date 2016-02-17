var loaders = require("./loaders");
var webpack = require('webpack');
module.exports = {
  entry: './src/app.ts',
  output: {
    filename: 'js/bundle.js',
    path: 'tmp'
  },
  resolve: {
    root: __dirname,
    extensions: ['', '.ts', '.js']
  },
  resolveLoader: {
    modulesDirectories: ["node_modules"]
  },
  devtool: "source-map-inline",
  plugins: [
    new webpack.ProvidePlugin({
      $: 'jquery',
      jQuery: 'jquery',
      'window.jQuery': 'jquery',
      'window.jquery': 'jquery'
    })
  ],
  module: {
    loaders: loaders
    //postLoaders: [
    //  {
    //    test: /^((?!\.spec\.ts).)*.ts$/,
    //    exclude: /(node_modules|bower_components)/,
    //    loader: 'istanbul-instrumenter'
    //  }
    //]
  }
};