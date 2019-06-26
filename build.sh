#!/bin/sh

APP_NAME="qaweb"
destination="/home/www/default/static/$APP_NAME";
rm -rf dist node_modules

cnpm install
npm run build

# 判断目录
if [ ! -d "$destination" ]; then
  mkdir "$destination"
  echo "目录$destination创建完成"
else
  echo "目录$destination已经存在"
fi
#rm -r /home/www/default/static/$APP_NAME
#mkdir /home/www/default/static/$APP_NAME

\cp -r dist/* /home/www/default/static/$APP_NAME

echo "部署成功"
