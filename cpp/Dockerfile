FROM ubuntu:latest
RUN apt-get update
RUN apt-get install -y clang
RUN apt-get install -y vim
RUN apt-get install -y powerline
RUN apt-get install -y screen
RUN apt-get install -y git
COPY .bashrc /root
COPY .vimrc /root
COPY zenburn.vim /root/.vim/colors/zenburn.vim
COPY .screenrc /root
RUN git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ENV LANG C.UTF-8
RUN vim +PluginInstall +qall
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Moscow
RUN apt-get install -y cmake
WORKDIR /root/.vim/bundle/YouCompleteMe
RUN apt-get install -y python3-dev
RUN python3 install.py --clangd-completer
ENV TERM xterm-256color