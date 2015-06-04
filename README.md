Vimrc Pro
---

使用步骤：
```
    1.安装Vundle项目
    2.下载本文件放在~/.vimrc
    3.更新所有插件
    4.编译Ycm插件
    5.安装go语言开发需要的插件
```


#简要说明


###关于vim7.4在Mac上的编译
---
```
    在mac上推荐使用homebrew，安装vim的话，可以直接更新到比较新的版本。
    1.如果在Mac下编译的时候遇到sigaltstack类型冲突的问题，可以编辑vim74源码文件夹下面的os_unix.h，添加

    #if defined(__APPLE__)
    #include <AvailabilityMacros.h>
    #endif

    后可以编译通过
```

###关于YouCompleteMe
---
```
    1.这个插件需要python支持，需要指定--with-python-config-dir路径到python的安装路径根目录
    2.ycm插件需要7.3.584以上得版本支持，所以为什么上面一开始就提到编译7.4的版本了
    3.另外在获取完插件之后，需要到.vim/bundle/YouCompleteMe的文件夹里面去运行install.sh脚本，
      进行这个插件的编译之后才能工作
```

 
###Docker镜像
---
```
    最近做了一个完整的Docker镜像，放在Docker Hub上
    主要内容：
        Centos7
        开发者工具包
        vim7.4
        golang1.4
    大小：1.7G左右
    suilongfei/centos:vimrc-pro
```
