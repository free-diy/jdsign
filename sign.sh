#!/bin/sh

arch=$(uname -m)

name=""
if [ "$arch" = "arm64" ] || [ "$arch" = "aarch64" ]; then
    name="jdsign-arm"
    rm -rf /root/jdsign-amd
elif [ "$arch" = "x86_64" ]; then
    name="jdsign-amd"
    rm -rf /root/jdsign-arm
fi


if [ ! -d /jdsign/${name} ]; then
    cp -r /root/${name} /jdsign
fi

while [ 1 ]
do
    if [ -x /jdsign/${name} ]; then
        chmod 777 /jdsign/${name}
        ./${name}
    else
        echo "没有检测到可执行文件"
    fi
    sleep 10
done