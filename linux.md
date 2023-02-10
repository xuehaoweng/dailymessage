## Cannot assign requested address

修改内核参数
vim /etc/sysctl.conf
net.ipv4.ip_local_port_range = 10 65000
增加可用端口：
sysctl -a |grep port_range
net.ipv4.ip_local_port_range = 50000 65000 -----意味着50000~65000端口可用

修改参数：
$ vi /etc/sysctl.conf
net.ipv4.ip_local_port_range = 10000 65000 -----意味着10000~65000端口可用

## syntax error near unexpected token '$'\r''

原因：

因为你所处理的文件换行符是dos格式的”\r\n” ；

可以使用cat -v 文件名 来查看换行符是否是，如果是上述的，则行结尾会是^m 需要转换成linux/unix格式的”\n”；

具体转换办法就是转换换行符 。

可以用sed命令处理一下文件，命令如下： 

sed ‘s/\r//’ 原文件 >转换后文件 ；

sed 命令的参数中 ”代表决定引用参数，不允许参数中的值让shell解释，s代表替换 /后面跟的是被替换的内容，后面的//代表替换后的内容为空 ；

推荐使用EditPlus或者UltraEdit,使用这些文本编辑工具，在保存时，可以选择保存的文字编码类型，比如选择UNIX格式换行符；

我比较喜欢EditPlus的join lines功能，把多行的值变成一个逻辑行，便于写到shell脚本中作为循环的变量。

 sed 's/\r//' xxx.sh > xxx.sh