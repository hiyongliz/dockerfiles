FROM ubuntu:22.04

LABEL description="This is a base image, which provides the OpenJDK 17 environment"

ADD jdk-17.0.11_linux-x64_bin.tar.gz /usr/local/

ENV JAVA_HOME=/usr/local/jdk-17.0.11
ENV PATH=$JAVA_HOME/bin:$PATH

CMD ["java", "-version"]
