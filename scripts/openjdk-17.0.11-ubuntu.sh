#!/bin/bash

# This script installs OpenJDK 17 on Ubuntu
echo "Building OpenJDK 17 on Ubuntu"

if [ -f openjdk/17/ubuntu/jdk-17.0.11_linux-x64_bin.tar.gz ]; then
    echo "OpenJDK 17 is already downloaded"
else
    echo "Downloading OpenJDK 17"
    wget https://download.oracle.com/java/17/archive/jdk-17.0.11_linux-x64_bin.tar.gz -O \
         openjdk/17/ubuntu/jdk-17.0.11_linux-x64_bin.tar.gz
fi

cd openjdk/17/ubuntu && docker build -t openjdk:17.0.11-ubuntu .
