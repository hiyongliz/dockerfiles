FROM python:3.12.10-slim

RUN sed -i 's/deb.debian.org/mirrors.aliyun.com/g' /etc/apt/sources.list.d/debian.sources && \
  sed -i 's/security.debian.org/mirrors.aliyun.com/g' /etc/apt/sources.list.d/debian.sources && \
  apt-get update && \
  apt-get install -y fontconfig fonts-noto-cjk fonts-noto-color-emoji && \
  fc-cache -fv && \
  fc-list :lang=zh && \
  apt-get clean

CMD ["python", "-V"]
