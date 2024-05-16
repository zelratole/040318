/*
# 기본 테이블 만들기
1. 테이블의 구성요소
	1) 테이블 명
	2) 컬럼 : 데이터유형 컬럼명
2. 컬럼의 유효
	1) 숫자형 number
	2) 문자열형 
		varchar2(byte) 가변형 
		varchar(byte) 고정형
	3) 날짜형
		date
3. 테이블 생성 기본형식
	create table 테이블명(
		컬럼명1 데이터유형,
		컬럼명2 데이터유형,
		컬럼명3 데이터유형,
		..
	);		
 * */
CREATE TABLE person(
	name varchar2(50),
	age NUMBER,
	loc varchar2(100)
);
SELECT * FROM person;
INSERT INTO person values('홍길동', 25,'경기 수원');
-- insert into 테이블명 values('문자열', 숫자, '문자열');    실행  및 확인..
