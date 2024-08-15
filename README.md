## sign
**Docker run**
```
docker run -dit \
  -p 17840:17840 \
  -e TZ=Asia/Shanghai \
  --name jdsign \
  --restart unless-stopped \
  freediy/jdsign:latest
```

**Docker-compose**
```
services:
    jdsign:
        stdin_open: true
        tty: true
        ports:
            - 17840:17840
        environment:
            - TZ=Asia/Shanghai
        container_name: jdsign
        restart: unless-stopped
        image: freediy/jdsign:latest
```
