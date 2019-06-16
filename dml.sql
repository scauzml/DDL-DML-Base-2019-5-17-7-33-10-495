-- 插入记录  
INSERT INTO `student` VALUES (3, '张四', 18, '男');
-- 修改记录  
UPDATE student set name='张五' WHERE id=3;
--  删除记录  
DELETE FROM student WHERE id =3;
-- 查询记录  
SELECT * from student where id=2;