FROM openjdk:jre-alpine
LABEL maintainer="nullmem@gmail.com"
ADD https://github.com/yui/yuicompressor/releases/download/v2.4.8/yuicompressor-2.4.8.jar /lib/yuicompressor.jar
COPY batch-compress.sh /bin/
RUN mkdir -p /yui && chmod +x /bin/batch-compress.sh
WORKDIR /yui
ENTRYPOINT ["java", "-jar", "/lib/yuicompressor.jar"]
CMD ["--help"]
