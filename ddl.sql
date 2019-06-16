-- **数据库级别：**  
--  显示所有数据库  
SHOW DATABASES;

--  进入某个数据库  
use student_examination_sys;

--  创建一个数据库  
CREATE DATABASE IF NOT EXISTS mydb3;

--  创建指定字符集的数据库  
CREATE DATABASE IF NOT EXISTS mydb4 DEFAULT CHARSET utf8;


--  显示数据库的创建信息   

show create DATABASE mydb4;
--  修改数据库的编码  
alter DATABASE mydb4 character set gb2312;

--  删除一个数据库   
drop DATABASE mydb3;

-- **表级别**
--  修改表名
use student_examination_sys;
alter table score rename scores;
--  修改字段的数据类型
ALTER table scores modify student_id varchar(50);
--  修改字段名
alter table scores change student_id studentid varchar(15)
--  添加字段
alter table scores add lv int;
--  删除字段
ALTER table scores drop lv;
--  修改表的存储引擎
ALTER table scores engine=MYISAM;

--  删除表的外键约束
ALTER table scores drop FOREIGN key student_ids
--  删除一张表
drop table scores;