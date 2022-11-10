use sakila;
/* select : 데이터베이스의 테이블을 데이터를 가져오는 명령어*/
/* select (칼럼 필드들 또는 *) from 테이블*/
select * from actor;
select first_name from actor; /* first_name 세로 한줄만 출력 */
select actor_id ,first_name from actor; /* actoer_id, first_name 세로 두줄 출력 */

/* where을 이용하여 원하는 데이터를 찾아서 볼 수 있다 */
/* where이 하는 일 : 특정한 조건을 가진 데이터를 찾음*/
select * from actor where actor_id = 1; /* actor_id가 1인 가로 한줄 출력*/

/* 
1. select를 이용하여 first_name이 JOE인 사람을 찾으시오
2. select를 이용하여 last_name이 DEAN인 사람을 찾으시오
	*이때, actor_id만 출력
 */
select * from actor where first_name = "JOE";
select actor_id from actor where last_name = "DEAN";


/* where에 연산자를 넣어서 조건을 만들 수 있다 */
/* =, <, >, <=, >= 비교연산자 사용가능 */
select * from actor where actor_id <= 5; /*5이하 아이디값*/

/* 
IS NULL : null인 데이터를 찾음
IS NOT NULL : null이 아닌 데이터를 찾아줌
IS : 두개의 값이 같은 때 찾음 ( = )
IS NOT : 두개의 값이 같지 않을때 찾음
*/
select * from actor where actor_id IS NULL;


/*
BETWEEN 최소값 AND 최대값 : 사이값을 찾음
NOT BTWEEN 최소값 AND 최대값 : 최소값보다 작고, 최대값보다 큰값을 찾음
*/
select * from actor where actor_id BETWEEN 5 AND 10; /* 5이상 10이하 출력 */
select * from actor where actor_id NOT BETWEEN 5 AND 10; /* 5미만 10초과 출력*/

/*
IN(찾을 값) : 찾는 값이 있다면 데이터 찾음 (여러 개를 함께 찾음)
NOT IN(제외할 값) : 제외할 값을 빼고 데이터를 찾음(여러개 제외가능)
*/
select * from actor where last_name in("DEAN", "DAVIS");
select * from actor where last_name not in("DEAN", "DAVIS");

/*
비교연산자 : actor_id가 190이상인 데이터를 출력하세요
IS : last_name이 CHASE 인 사람을 찾으세요
BETWEEN : actor_id가 100에서 110인 데이터를 출력하세요
IN : first_name이 SUSAN과 NICK인 사람을 찾으세요
*/
/*비교연산자*/
select * from actor where actor_id >= 190;
/*IS*/
select * from actor where last_name = "CHASE" is false;
/*BETWEEN*/
select * from actor where actor_id BETWEEN 100 AND 110;
/*IN*/
select * from actor where first_name in ("SUSAN","NICK");

/* 논리연산자 : &&(and), || (or), !(not) */
select * from actor where actor_id >= 100 && actor_id <=110; /*100이상 110이하 actor_id 출력*/
select * from actor where actor_id != 1; /*1이 아닌것들 출력*/
select * from actor where actor_id <= 100 || actor_id >= 110; /*100이하 110이상 actor_id 출력*/

/* acotr_id를 1~5와 195~200을 한번에 출력하세요*/
select * from actor where actor_id <= 5 || actor_id >= 195 && actor_id <= 200;

/* 패턴 매칭 : LIKE - 특정패턴의 데이터를 포함해서 찾음
	와일드카드 : 문자나 문자열을 대체하기위해 사용되는 기호
    %, _
    % : 0개 이상의 문자를 대체함
    _ : 1개의 문자를 대체함
*/
select * from actor where first_name LIKE 'B%'; /*B로 시작하는 first_name 출력*/
select * from actor where first_name LIKE 'B___'; /* -3개입력 B ooo B로시작하는 4글자 출력*/
select * from actor where first_name LIKE '%B'; /*B로 시작해서 B로끝나는것 출력*/
select * from actor where first_name LIKE '%B%'; /*B가 들어간것 출력*/

/* last_name 중에서 A가 들어가는 모든사람을 출력*/
select * from actor where first_name LIKE '%A%';

/* LIKE : 한글도 동일하게 검색*/
use book;
select * from Coding;
select * from Coding where Title LIKE '자%';

/* REGEXP : 정규식 - like 보다 복잡한 패턴으로 데이터를 찾고싶을때 사용*/
use sakila;
select * from actor where first_name REGEXP "^B";
select * from actor where first_name REGEXP "N+"; /* N+ 해주면 연속으로 붙어있는것들 출력*/