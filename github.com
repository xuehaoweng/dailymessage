今天用git提交代码到github的时候遇到了一个问题



这个错误大致是说连接到github的时候超时了。那么该怎么解决呢？很简单，这个超时了无非就是你的代理出了点问题，不过好在git上用几个命令就能够很快搞定。

git config --global --unset http.proxy
 
git config --global --unset https.proxy
然后再push，就很nice!
