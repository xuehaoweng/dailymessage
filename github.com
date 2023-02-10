今天用git提交代码到github的时候遇到了一个问题



这个错误大致是说连接到github的时候超时了。那么该怎么解决呢？很简单，这个超时了无非就是你的代理出了点问题，不过好在git上用几个命令就能够很快搞定。

git config --global --unset http.proxy
 
git config --global --unset https.proxy
然后再push，就很nice!


使用git命令关闭网络代理再重新打开命令行窗口

1）命令行输入以下

git config --global http.sslVerifyfalse
git config --global --unset http.proxy
git config --global --unset https.proxy
git config --global http.sslBackend "openssl"

2）重启命令行窗口，重新git push