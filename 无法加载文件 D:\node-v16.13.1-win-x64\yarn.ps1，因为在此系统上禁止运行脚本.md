无法加载文件 D:\node-v16.13.1-win-x64\yarn.ps1，因为在此系统上禁止运行脚本。

解决方法：
1.搜索powerShell，然后右键以管理员身份运行
2.以管理员运行后，弹出命令窗口
在窗口上执行：set-ExecutionPolicy RemoteSigned，然后输入Y，按回车确认
3.查看执行策略：get-ExecutionPolicy
4.关闭，完成以上步骤之后即可解决
