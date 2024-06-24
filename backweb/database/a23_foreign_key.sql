/*
# 외래키 설정 관계(foreign key)
1. 연관관계 있는 두 테이블에 대하여, 한쪽 테이블에 있는 데이터 기준으로
다른 테이블의 데이터를 입력할 수 있게 하는 것을 말한다.
	ex) dept 테이블의 deptno만 emp 테이블에 입력가능하게 처리
2. 기본 형식
	컬럼명 데이터유형 constraint 테이블_컬럼명_fk
		references 대상테이블(컬럼명)
 * */

CREATE TABLE emp12(
	ename varchar2(50),
	deptno NUMBER CONSTRAINT emp12_deptno_fk
		REFERENCES dept(deptno)
);
SELECT * FROM dept;
INSERT INTO emp12 values('홍길동',10);
INSERT INTO emp12 values('김길동',20);
INSERT INTO emp12 values('마길동',30);
INSERT INTO emp12 values('오길동',40);
INSERT INTO emp12 values('하길동',50); --FOREIGN 제약 조건 위배
SELECT * FROM emp12;
-- ex) teacher01 tno (primary key) 설정 테이블 데이터 입력
--     student11  sname(학생명), tno(위 teacher01 tno 포린키로 설정)
--     데이터 입력 처리 확인..
CREATE TABLE teacher01(
	tno NUMBER PRIMARY key
);
INSERT INTO teacher01 values(10);
INSERT INTO teacher01 values(20);
INSERT INTO teacher01 values(30);
CREATE TABLE student11(
	sname varchar2(50),
	tno NUMBER CONSTRAINT student11_tno_fk REFERENCES teacher01(tno)
);
INSERT INTO student11 values('홍길동',10);
INSERT INTO student11 values('김길동',10);
INSERT INTO student11 values('신길동',20);
INSERT INTO student11 values('마길동',30);
INSERT INTO student11 values('오길동',40); -- FOREIGN KEY 위반
SELECT * FROM student11;










