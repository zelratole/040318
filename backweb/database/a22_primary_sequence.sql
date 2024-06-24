/*
# primary key
1. 제약사항에서 key로 row단위를 식별해주는 데이터를 입력시,
	not null, unique를 동시에 처리해준다.
2. 주로 유일한 식별자인 사원번호, 주민번호, 학번 등을 처리시 입력한다.
3. 입력시, 데이터를 화면단에서 유일 내용을 식별해서 처리하는 경우도 있지만,
	(ajax로 동일 등록 여부 확인), sequence 객체를 이용하여 여러가지
	문자열 조합으로 반드시 유일한 데이터가 입력되게 처리하는 경우도 있다.
4. 기본 형식
	create table 테이블명(
		유일컬럼 데이터유형 primary key
	)	
	create table 테이블명(
		유일컬럼 데이터유형 constraint 테이블명_컬럼명_pk primary key
	)	
**/
SELECT * FROM emp;
CREATE TABLE employee01(
	empno number(4) PRIMARY key
);
CREATE TABLE employee02(
	empno number(4) CONSTRAINT employee02_empno_pk PRIMARY key
);
INSERT INTO employee01 values(1000);
INSERT INTO employee01 values(1001);
INSERT INTO employee01 values(1002);
INSERT INTO employee01 values(null); -- NULL 입력으로 에러 발생
INSERT INTO employee01 values(1001); -- 1001 중복데이터 입력으로 에러 발생
/*
# sequence 객체
1. 자동으로 numbering하는 객체로 주로 식별자에를 자동으로 입력할 때, 사용된다.
2. 기본 형식
	1) 생성
	create sequence 시퀀스명
		start with 1   -- 시작번호 설정
		increment by 1  -- 증가단위 설정
		minvalue 1   -- 최소값 설정
		maxvalue 999999   -- 최대값 설정..
	2) 활용
		시퀀스명.nextval : 시퀀스의 다음 값을 호출하여 가져온다.
		시퀀스명.currval : 시원스의 현재 값을 가져온다.
	3) 삭제
		시퀀스는 현재값을 변경할 수 없기에 현재값을 호출시 문제가 발생하는
		경우에는 삭제하고 설정할 현재값을 기준으로 다시 생성한다.
		drop sequence 스퀀스명;
				
 * */
CREATE SEQUENCE emp_seq_01
	START WITH 1000
	INCREMENT BY 1
	MINVALUE 1000
	MAXVALUE 9999;
SELECT emp_seq_01.nextval FROM dual;
SELECT emp_seq_01.currval FROM dual;
SELECT emp_seq_01.nextval FROM dual;
SELECT emp_seq_01.currval FROM dual;
--  실행시 마다 정가되어 처리가 된다.
INSERT INTO employee02 values(emp_seq_01.nextval); 
-- 계속 실행시 자동으로 중복되지 않는 시퀀스 번호가 테이블에 할당된다.
SELECT * FROM  employee02;
-- ex) student07 테이블 만들고 no, name, kor, eng를 설정해서
--     no는 1~999 입력되게하여, sequence와 함께 데이터를 입력 처리해보세요.
--     no는 primary key 설정..
CREATE TABLE student07(
	NO char(8),
	name varchar2(50),
	kor number(3),
	eng number(3)
);
CREATE SEQUENCE stud_seq
	START WITH 10000
	MAXVALUE 99999;
-- 입력년도(2)+단과코드(1)+sequence자리(5) 24A10000
INSERT INTO student07 values(20||'A'||stud_seq.nextval,
							'마길동',90,90);
SELECT * FROM student07;
/*
# check
1. 특정 컬럼에 조건이나 범위를 지정해서, 해당 범위에 데이터만 입력되도록 처리하는
	것을 말한다.
2. 형식
	컬럼명 데이터유형 constraint 제약명 check(조건형식-where문하위 sql)
	컬럼명 데이터유형 check(제약조건 내용)
 * */
CREATE TABLE student08(
	gender varchar2(1) CONSTRAINT student08_gender_ck
		check(gender IN('F','M'))
);
INSERT INTO student08 values('F');
INSERT INTO student08 values('M');
INSERT INTO student08 values('남');
INSERT INTO student08 values(null);
INSERT INTO student08 values('M');
SELECT * FROM student08;
-- ex1) student09 gender '남'/'여' 만 입력 가능하게 처리
-- ex2 student10 kor, eng  0~100 만 입력 가능하게 처리..
CREATE TABLE student09(
	gender char(3) CONSTRAINT student09_gender_ck
		check(gender IN('남','여'))
);
INSERT INTO STUDENT09 values('남');
INSERT INTO STUDENT09 values('여');
INSERT INTO STUDENT09 values(null);
INSERT INTO STUDENT09 values('남');
SELECT * FROM STUDENT09;
CREATE TABLE student10(
	kor number(3) check(kor BETWEEN 0 AND 100),
	eng number(3) check(eng BETWEEN 0 AND 100)
);
SELECT * FROM student10;
INSERT INTO student10 values(80,100);


SELECT *
FROM EMP e 
WHERE sal BETWEEN 1000 AND 2000;






















