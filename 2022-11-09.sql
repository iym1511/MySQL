/*주석 */
/*SQL의 명령어는 Query(쿼리)라고 부르며 ctrl+Enter를 통해 한줄로 실행 
여러줄을 동시에 실행할수 있지만 쿼리를 실행하면 데이터베이스에 즉시 반영되므로
이전에 작성한 명령어가 제대로 작동되지않을수 있다(특히 create)
*/

/*create database를 통해 데이터 베이스를 작성할수 있다
create database는 동일한 이름을 가질수 없다!(한번만 실행가능)
*/
create database test;
/* 데이터베이스의 테이블을 사용하기전에, 데이터 베이스로 이동*/
USE test;

/* 
데이터베이스의 테이블을 사용할때도 동일하게 create사용
테이블을 작성해줄때는, 안에 들어갈 자료형을 고정시킨다
*/
create table people (
	ID int,
    Name varchar(10) 
);                         

/* insert를 사용해서 데이터를 넣을수 있다.*/
insert into people (ID, Name) values (1, "홍길동");
insert into people (ID, Name) values (2, "고길동");

/* alter table 테이블이름 add 필드어플 필드타입*/
alter table people ADD age int;
alter table people ADD Phone int;

/* alter table 테이블 이름 dorp 필드이름*/
alter table poeple drop Phone;
/*alter는 테이블을 수정할수 있지만 
데이터를 지우거나 null이 들어가기 때문에 자주 사용하지않는다.
*/

/* drop을 이용해서 데이터베이스와 테이블 삭제*/
drop table people;
drop database test;
/*
drop은 create를 쓰기전에 중복되는 데이터베이스가 있다면 삭제하기위해서 사용
아래 세줄을 묶음으로 많이 사용한다.
drop database test;
create database test;
use test
*/


/* 
select (필드) from (테이블
필드에 * 기호를 넣으면 테이블의 모든 필드값을 확인한다.
*/
select * from people;