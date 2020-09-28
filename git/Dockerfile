# docker build -t wxnacy/git:latest .
FROM wxnacy/ubuntu:latest

# RUN apt-get update -y \
    # && apt-get install -y git vim \
    # && apt-get clean

ADD run.sh /usr/local/bin
RUN chmod +x /usr/local/bin/run.sh


# 启动命令
# 需要配置脚本中的环境变量
CMD run.sh
