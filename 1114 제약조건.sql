/*
제약조건 : 데이터를 입력 받을때 실행되는 껌사 규칙
> create로 생성해줄 때 함께 추가

NOT NULL : 값이 빈값이 들어갈수 없음 
UNIQUE : 중복된 값을 사용할수 없음
PRIMARY KEY : not null과 unique의 특정을 모든 가진 키
			데이터를 찾을때 사용, 업데이트 및 삭제시에 사용 (Id 값으로 들어감)- 테이블당 하나
FOREIGN KEY : 다른 테이블과 연결 > join
DEFAULT : 해당 필드의 기본값 설정
*/

/*
영화 정보 테이블
id(primary key), title(not null), detail,
*/

create table movieinfo(
	Id int primary key,
    title varchar(100) not null, /*not null - 값이 반드시 들어가야함*/
    detail text
);
insert into movieinfo values (1, "공조", "영화입니다.");
select * from movieinfo; /*primary key 떄문에 같은 아이디는 출력안됨*/
insert into movieinfo values (2, "반지의재왕","새로운 영화입니다");

/*
movieactor 영화배우 테이블
id(primary key), name(n n), movie
*/

create table movieactor(
	Id int primary key,
    name varchar(100) not null,
    movie text  /*text : 제한 없음*/
);
insert into movieactor(id, name) values (3, "홍길동");
select * from movieactor;

/* 제약조건을 alter를 이용해서 기존의 필드에 추가하기  / text로 해줘서안됨 varchar로 해주자  */ 
alter table movieactor alter movie set default "없음";
/*제약조건을 alter를 이용해서 새로운 필드 regist 추가하기  /       현재시간     */
alter table movieactor add regist timestamp default current_timestamp;
insert into movieactor(id, name, movie) values(4, "성춘향", "춘향전");

/* movierate 테이블의 rate 필드에 alter 이용하여 default 제약조건을 추가하세요 - 0*/
alter table movierate alter rate set default 0;
select * from movierate;
insert into movierate(id, Title) values(3,"해리포터");