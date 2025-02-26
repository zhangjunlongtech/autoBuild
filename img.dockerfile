# 使用Ubuntu作为基础镜像
FROM openeuler/openeuler:24.03-lts
 
# 更新包列表并安装一些基本的软件包
RUN yum update -y && \
    yum install -y \
        unzip \
        curl \
    && yum clean all \
    && rm -rf /var/cache/yum \
    && rm -rf /tmp/*
 
# 设置工作目录
WORKDIR /app
 
# 复制当前目录下的文件到容器中的/app目录
COPY . /app
 
# 暴露容器将监听的端口（如果需要的话）
EXPOSE 8080
 
# 指定容器启动时运行的命令
CMD ["bash"]