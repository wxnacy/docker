# FROM yidu/keyan:1.0.1

# ADD lib/.pyenv /root/.pyenv

# RUN apt-get -y update \
    # && apt-get -y install git gcc make patch zlib1g.dev libgdbm-dev libssl-dev \
    # libsqlite3-dev libbz2-dev libreadline-dev \
    # && apt-get clean

# ADD Python-2.7.13.tar.xz /root/.pyenv/cache
# ADD Python-3.6.5.tar.xz /root/.pyenv/cache

# ADD pyenv/init.sh /init.sh

# SHELL ["/bin/bash", "-c"]
# RUN  echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc \
    # && echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc \
    # && echo 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.bashrc \
    # && source ~/.bashrc
    # # && pyenv install 2.7.13
    # # && chmod +x /init.sh && /init.sh
# # &&  /bin/bash -c "pyenv install 2.7.13"
# # &&  pyenv install 3.6.5 \
# # &&  pyenv global 2.7.13 3.6.5
# # &&  pip3 install pipenv \
# # &&  rm -rf ~/.pyenv/cache

FROM yidu/paasbase:19.0.5

# 添加文件到容器
# ADD data /root
ADD . /root/
# COPY Python-2.7.13.tar.xz /root/.pyenv/cache/
ADD cache /root/.pyenv/cache
RUN ls /root/.pyenv
# RUN mkdir ~/.pyenv/cache &&  mv -f ~/cache ~/.pyenv/cache

# 安装基础环境依赖工具
RUN yum -y install zlib-devel bzip2-devel openssl-devel \
    ncurses-devel sqlite-devel readline-devel tk-devel gdbm-devel \
    db4-devel libpcap-devel xz-devel vim \
&&  yum clean all

# 配置环境并安装相应 python 版本 & pipenv 包
RUN echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc \
&&  echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc \
&&  echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.bashrc \
&&  source ~/.bashrc \
&&  pyenv install 2.7.13 \
&&  pyenv global 2.7.13 \
&&  pip install setuptools==36.2.1 zipp==0.5 configparser==3.5 \
&&  pip install pipenv \
&&  rm -rf ~/.pyenv/cache

# 设置环境变量
ENV PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ ' \
    PYENV_ROOT="$HOME/.pyenv" \
    PATH="$PYENV_ROOT/bin:$PATH"

CMD exec /bin/bash -c "trap : TERM INT; sleep infinity & wait"
