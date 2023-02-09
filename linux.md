# Cannot assign requested address

修改内核参数
vim /etc/sysctl.conf
net.ipv4.ip_local_port_range = 10 65000
增加可用端口：
sysctl -a |grep port_range
net.ipv4.ip_local_port_range = 50000 65000 -----意味着50000~65000端口可用

修改参数：
$ vi /etc/sysctl.conf
net.ipv4.ip_local_port_range = 10000 65000 -----意味着10000~65000端口可用
