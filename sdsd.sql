-- 学生表
create table student(
	s_id varchar(20) comment '学生编号',
	s_name varchar(20) not null default ''comment '学生姓名',
	s_birth varchar(20) not null default ''comment '出生年月',
	s_sex varchar(10) not null default '' comment '学生性别',
	primary key(s_id)
)engine=innodb default charset=utf8 comment'学生表';

-- 课程表
create table course(
	c_id varchar (20) comment '课程编号',
	c_name varchar (20) not null default '' comment '课程名称',
	t_id varchar(20) not null comment '教师编号',
	primary key(c_id)
)engine=innodb default charset=utf8 comment '课程表';

-- 教师表
create table teacher(
	t_id varchar (20) comment '教师编号',
	t_name varchar(20) not null default '' comment '教师姓名' ,
	primary key(t_id)
)engine=innodb default charset=utf8 comment '教师表';

-- 成绩表
create table score(
	s_id varchar(20) comment '学生编号',
	c_id varchar(20) comment '课程编号',
	s_score int(3) comment '分数',
	primary key(s_id,c_id)
)engine=innodb default charset=utf8 comment '成绩表';

-- 插入学生表
insert into Student values('01' , '赵雷' , '1990-01-01' , '男');
insert into Student values('02' , '钱电' , '1990-12-21' , '男');
insert into Student values('03' , '孙风' , '1990-05-20' , '男');
insert into Student values('04' , '李云' , '1990-08-06' , '男');
insert into Student values('05' , '周梅' , '1991-12-01' , '女');
insert into Student values('06' , '吴兰' , '1992-03-01' , '女');
insert into Student values('07' , '郑竹' , '1989-07-01' , '女');
insert into Student values('08' , '王菊' , '1990-01-20' , '女');
-- 插入课程表
insert into Course values('01' , '语文' , '02');
insert into Course values('02' , '数学' , '01');
insert into Course values('03' , '英语' , '03');
-- 插入教师表
insert into Teacher values('01' , '张三');
insert into Teacher values('02' , '李四');
insert into Teacher values('03' , '王五');
-- 插入成绩表
insert into Score values('01' , '01' , 80);
insert into Score values('01' , '02' , 90);
insert into Score values('01' , '03' , 99);
insert into Score values('02' , '01' , 70);
insert into Score values('02' , '02' , 60);
insert into Score values('02' , '03' , 80);
insert into Score values('03' , '01' , 80);
insert into Score values('03' , '02' , 80);
insert into Score values('03' , '03' , 80);
insert into Score values('04' , '01' , 50);
insert into Score values('04' , '02' , 30);
insert into Score values('04' , '03' , 20);
insert into Score values('05' , '01' , 76);
insert into Score values('05' , '02' , 87);
insert into Score values('06' , '01' , 31);
insert into Score values('06' , '03' , 34);
insert into Score values('07' , '02' , 89);
insert into Score values('07' , '03' , 98);

select
	a.*,b.s_score as score1,c.s_score as score2
from
	student a left join score b on a.s_id = b.s_id
	and b.c_id = '01'
	
