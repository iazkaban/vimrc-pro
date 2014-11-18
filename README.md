Vimrc Pro
---

使用步骤：
```
    1.安装Vundle项目
    2.下载本文件放在~/.vimrc
    3.更新所有插件
    4.编译Ycm插件
```


#简要说明


###关于vim7.4在Mac上的编译
---
```
    1.如果在编译的时候遇到sigaltstack类型冲突的时候，可以编辑vim74源码文件夹下面的os_unix.h，添加

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
    3.另外在获取完插件之后，需要到.vim/bundle/YouCompleteMe的文件夹里面去运行install.sh脚本，进行这个插件的编译之后才能工作
```
