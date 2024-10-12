FROM openjdk:17.0.11-ubuntu

LABEL description="This is a base image, which provides the OpenJDK 17 environment with Ubuntu fonts"

RUN sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list && \
    apt-get update && \
    apt-get install -y fontconfig && \
    apt-get install -y fonts-noto-cjk && \
    fc-cache -fv && \
    fc-list :lang=zh

CMD ["java", "-version"]
