FROM alpine:latest
COPY . /root
ENV TZ=Asia/Shanghai \
        LANG=zh_CN.UTF-8
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && \
    apk add tzdata alpine-conf  && \
    /sbin/setup-timezone -z Asia/Shanghai && \
        apk del alpine-conf && \
    chmod 777 /root/sign.sh && \
    mkdir /jdsign
WORKDIR /jdsign
ENTRYPOINT ["sh", "/root/sign.sh"]
