Vimrc Pro
---

需要支持：
```
1.vim7.4以上版本
2.Python2.x以及dev库
3.cmake
```
获取方式：
```
git clone https://github.com/iazkaban/vimrc-pro ~/.vim
```
安装方式：
```
cd $HOME/.vim

git submodule init
git submodule update

cp .vimrc ../.vimrc
```
然后，执行vim，在vim命令行里面执行:
(执行GoInstallBinaries的时候，需要翻墙)
```
:BundleInstall
:GoInstallBinaries
```

编译YCM
```
cd $HOME/.vim/bundle/YouCompleteMe

./install.py
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
3.另外在获取完插件之后，需要到.vim/bundle/YouCompleteMe的文件夹里面去运行install.py脚本，
    进行这个插件的编译之后才能工作
```
