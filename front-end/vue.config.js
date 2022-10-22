module.exports = {
  devServer: {
    disableHostCheck: true,
  },
  configureWebpack: {
    optimization: {
      splitChunks: {
        minSize: 10000,
        maxSize: 250000,
      },
    },
  },
};
