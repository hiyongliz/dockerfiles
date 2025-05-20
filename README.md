# 🐳 Dockerfile Hub

一个用于存储和管理各种 Docker 镜像构建文件的仓库。

## 📋 项目简介

Dockerfile Hub 是一个集中管理各种 Docker 镜像构建文件的仓库，旨在提供标准化、可复用的 Docker 镜像构建方案。目前主要包含 OpenJDK 相关的镜像构建文件。

## 🔍 镜像列表

### OpenJDK

- **openjdk:17.0.11-ubuntu**: 基于 Ubuntu 22.04 的 OpenJDK 17.0.11 环境
- **openjdk:17.0.11-ubuntu-fonts**: 在 OpenJDK 17.0.11 基础上添加了中文字体支持

## 🚀 使用方法

### 构建 OpenJDK 17.0.11 Ubuntu 镜像

```bash
# 构建基础镜像
make openjdk-17.0.11-ubuntu

# 构建带中文字体支持的镜像
make openjdk-17.0.11-ubuntu-fonts
```

### 使用镜像

```bash
# 运行基础镜像
docker run -it --rm openjdk:17.0.11-ubuntu

# 运行带中文字体支持的镜像
docker run -it --rm openjdk:17.0.11-ubuntu-fonts
```

## 📁 项目结构

```
.
├── LICENSE                             # 许可证文件
├── Makefile                            # 构建脚本
├── README.md                           # 项目说明文档
├── openjdk                             # OpenJDK 相关文件
│   └── 17
│       └── ubuntu
│           ├── Dockerfile              # OpenJDK 17 Ubuntu 基础镜像构建文件
│           ├── fonts.Dockerfile        # OpenJDK 17 Ubuntu 中文字体支持镜像构建文件
│           └── jdk-17.0.11_linux-x64_bin.tar.gz  # JDK 安装包
└── scripts                             # 辅助脚本
    └── openjdk-17.0.11-ubuntu.sh      # OpenJDK 17 Ubuntu 镜像构建脚本
```

## 📝 注意事项

- 构建 OpenJDK 镜像时，如果本地没有 JDK 安装包，脚本会自动从 Oracle 官网下载
- 带字体支持的镜像使用了阿里云的镜像源以加速安装过程

## 📄 许可证

本项目采用 MIT 许可证，详情请参阅 [LICENSE](LICENSE) 文件。
