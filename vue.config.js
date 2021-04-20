module.exports = {
  publicPath: process.env.NODE_ENV === 'production'
    ? '/economic-datas/'
    : '/',
  transpileDependencies: [
    'vuetify'
  ]
}
