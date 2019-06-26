const path = require("path");
const publicPath = process.env.NODE_ENV === "production" ? "/static/qaweb" : "/"
const assetsDir = process.env.NODE_ENV === "production" ? "./" : "./"


module.exports = {
  publicPath: publicPath,
  assetsDir: assetsDir

}
