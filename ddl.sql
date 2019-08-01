-- **数据库级别：**  
--  显示所有数据库  
show databases;
--  进入某个数据库  
use mydatabase;

--  创建一个数据库  
create databases name;
--  创建指定字符集的数据库  
create database if not exists test03 default character set = 'utf8';
--  显示数据库的创建信息   
show create database t1;
--  修改数据库的编码  
第1步：在[mysqld]标签下加：character-set-server=utf8
第2步：在最后一行新建[client]标签，并在标签下加：default-character-set=utf8

--  删除一个数据库   
drop database name
-- **表级别**
--  修改表名
EXEC sp_rename ‘name’, 'practice';
--  修改字段的数据类型
alter table 表名 modify column 字段名 类型
--  修改字段名
EXEC sp_rename ‘[原有列名]’, ‘[新列名]'  , 'COLUMN';
--  添加字段
alter table  表名  add (字段  字段类型)
--  删除字段
alter table  表名  drop (字段);
--  修改表的存储引擎
ALTER TABLE my_table ENGINE=存储引擎名
--  删除表的外键约束
ALTER TABLE test_sub DROP CONSTRAINT main_id_cons;
--  删除一张表
drop table tablename;
