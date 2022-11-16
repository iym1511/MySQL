/* select 절을 사용한 데이터베이스의 데이터 확인*/
/*
1. select * from 테이블;
2. select 출력할 필드 from 테이블;
3. select * from 테이블 where 조건;
4. select * from 테이블 where 조건중 패턴매칭(like)

*/
/* 그외의 select절에 사용할수 있는 키워드
1. distinct : 필드 앞에 작성해서 중복되는 값 제거
2. order by : 원하는 칼럼의 글자, 숫자 순으로 나열
*/
use sakila;
select * from customer;
select distinct store_id from customer; /*distinct : 겹치지않게 출력*/
select * from city;

/* sakila 데이터베이스의 city 테이블에서 country_id의 종류가 확인하세요*/
select distinct country_id from city;

/*order by 전체 테이블의 순서 정렬 : (기본)오름차순으로정렬 / desc 내림차순 정렬 */
select * from customer order by first_name desc; 
select * from customer order by store_id desc, first_name; 

/* active를 오름차순으로 정렬한 후 create_date를 내림차순으로 정렬하세요*/
select * from customer order by active asc, create_date desc;
/* last_name을 오름차순으로 정렬한 후 first_name을 오름차순으로 정렬하세요 */
select * from customer order by last_name ,first_name;

/* limit를 이용해서 원하는 범위만 출력할수 있다*/
/* limit 시작위치(0) 출력 개수*/
select * from customer limit 0,3; /*(시작범위),(마지막 범위)*/

/* create_data를 오름차순으로 정렬하고 first_name을 오름차순으로 정렬한 후 가장 위에있는 10개만 출력
	가장 위에있는 10개만 출력 + where를 통해 active값이 1인내용 만 출력
*/
select * from customer where active = 1 order by create_date, first_name 
limit 0,10;

/*
customer_id 가 100보다 큰 데이터를 last_name으로 내림차순으로 정렬하세요
+ limit를 통해서 30개만 출력
*/
select * from customer where customer_id >100 order by last_name desc limit 0,30;

/* min(), max() 함수를 활용해서 각 필드에서 가장큰값과 작은값을 가져올수 있다*/
/* as를 통해서 컬럼이름을 바꿔서 출력할 수 있다*/
select min(customer_id) as min_id from customer;
select max(create_date) from customer;

select * from film;
select max(length), title from film; /*제일 긴 영화제목*/

/* film 테이블에서 (length)길이가 작은 영화의 제목을 출력
   film 테이블에서 replacement_cost 가 가장 큰 값을 출력
   film의 rental_rate가 3이상인 영화중에 lenght가 가장 작은것부터 정렬하여 영화제목과 lenght 5개를 출력하세요*/
select min(length),  title from film;
select max(replacement_cost) from film;
select * from film where rental_rate <= 3 limit 0,5; 
select min(length), title from film where rental_rate >= 3 limit 0,5;