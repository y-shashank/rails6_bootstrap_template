const { environment } = require('@rails/webpacker')
const webpack = require("webpack")

environment.loaders.append('expose', {
  test: require.resolve('jquery'),
  use: [
    { loader: 'expose-loader', options: { exposes: ['$', 'jQuery'] } }, 
  ]
})
environment.plugins.append("Provide", new webpack.ProvidePlugin({
  Popper: ['popper.js', 'default']
}))



module.exports = environment