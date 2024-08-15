```
docker run -dit \
  -p 17840:17840 \
  -e TZ=Asia/Shanghai \
  --name jdsign \
  --restart unless-stopped \
  freediy/jdsign:latest
```
