# yuicompressor
 lightweight yuicompressor docker image for command line minification of js and css files

# YUI Compressor

The YUI Compressor is a CSS & Javascript compression and minification tool based on Java. Official documentation can be found [here](https://yui.github.io/yuicompressor/). There might be many reasons why you would run Java inside a container instead of installing it directly on your machine. This image is based on the popular [Alpine Linux project](https://alpinelinux.org/) and contains the bare minimum JRE components required to run the YUI Compressor from [OpenJDK](https://hub.docker.com/_/openjdk) and weighs in at only ~83MB.

## How to use this image

```sh
docker run -it -v ${PWD}:/yui --rm nullmem/yuicompressor input.js -o output.min.js```
```

## You can also create a shell alias

```sh
alias yuicompressor="docker run -it -v \${PWD}:/yui --rm nullmem/yuicompressor"```
```

## Recursive batch compression

You can also recursively compress all CSS & Javascript files in the current directory and all its subdirectories. This script will ignore all currently minimized files ( *.min.css | *.min.js ) and will overwrite them with the latest minimized version automatically.

```sh
docker run -v ${PWD}:/yui -it --rm --entrypoint /bin/batch-compress.sh nullmem/yuicompressor```
```