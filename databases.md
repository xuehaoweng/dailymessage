# redis不允许远程连接、并且不允许访问

1. 修改配置文件
2. 允许后台启动、取消保护模式、bind改为0.0.0.0
3. 启动引用配置文件

# 清空数据表-取消外键约束

truncate table  ipam_subnet;

SET foreign_key_checks = 0; // 取消外键约束
SET foreign_key_checks = 1; // 启用外键约束