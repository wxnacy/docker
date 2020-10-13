# docker build -t wxnacy/git:latest .
FROM wxnacy/ubuntu:latest

WORKDIR /work

# 启动命令
# 需要配置脚本中的环境变量
COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
