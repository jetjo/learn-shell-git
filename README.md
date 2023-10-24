# learn-shell-git

学习git命令和shell基础知识

## 参考链接:

1、[关于ifelse](https://unix.stackexchange.com/questions/34491/dev-null-21-in-if-statement)\
    `shell`脚本的`if`表达式可以是一条命令或脚本的调用,\
    `if`并不关心其输出,而是根据命令或脚本的`exit code`判断

2、[关于io重定向](https://segmentfault.com/a/1190000040086046)\
    `2>&1`, 意为将`stderr`重定向到`stdout`; \
    `1>&2`或者简写为`>&2`, 重定向为`stderr`, 例如:\
    `echo >&2  'error message...'`,\
     相当于`js`的`console.error()`

3、[关于虚拟设备文件/dev/null](https://linuxhint.com/what_is_dev_null/)\
    `/dev/null`可以理解为`black hole`,向其输入任何信息都没有效果,`exit code`却是0

4、[关于/dev/random和/dev/urandom](https://zh.wikipedia.org/wiki//dev/random)\
    随机数生成器、非阻塞随机数生成器

5、[关于/dev/zero](https://en.wikipedia.org/wiki//dev/zero)\
    产生连续流的设备,流以[`null characters`](https://en.wikipedia.org/wiki/Null_character) (`ASCII NUL`, `0x00`) 填充\
    [与/dev/null的不同](https://unix.stackexchange.com/questions/254384/difference-between-dev-null-and-dev-zero)
