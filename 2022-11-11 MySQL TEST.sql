create database Blog;

USE Blog;
create table post(
	ID int,
    Name varchar(30),
    Title varchar(50),
    Content text
);
insert into post (ID, Name, Title, Content)
value (1,"홍길동","첫번째 포스트","글을 작성합니다");

insert into post (ID, Name, Title, Content) 
value (2,"홍길동","두번째 포스트","새로운 글을 작성합니다");

insert into post (ID, Name, Title, Content) 
value (3,"성춘향","첫번째 제목","내용1");


update post set Title = "수정된 제목입니다" where ID= 2;
delete from post where ID = 1;

select * from post where ID = 3;

select * from post;