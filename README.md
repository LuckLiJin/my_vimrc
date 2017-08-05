# my_vimrc
vim 的配置文件

安装包太大无法上传，可以使用插件安装命令自行安装

## 安装环境检查

1. vim --version | grep python  
    如果看到 -python ， 则说明需要安装py2的支持包  
2. 安装py2支持包  
    http://packages.ubuntu.com/search?suite=default&section=all&arch=any&keywords=-py2&searchon=names  
    以 nox 为例，在终端输入 sudo apt-get install vim-nox-py2   

## 快捷键简单说明

','为leader键

, + t： 显示目录树

, + f：显示当前目录下的文件列表

, + p: 快速切换文件

j + k: 退出编辑模式

, + c: 注释

, + cu:取消注释

, + cs:切换注释样式

, + ca:注释块

, + ":将单词用双引号括住

, + ev:打开vimrc

, + sv:保存并执行vimrc
