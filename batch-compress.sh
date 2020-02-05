#!/bin/sh

find . -iname "*.css" ! -name "*.min.*" -exec echo "compressing" {} \; -exec java -jar /lib/yuicompressor.jar -o '.css$:.min.css' {} \;
find . -iname "*.js" ! -name "*.min.*" -exec echo "compressing" {} \; -exec java -jar /lib/yuicompressor.jar -o '.js$:.min.js' {} \;
