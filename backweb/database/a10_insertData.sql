/*
# 데이터 입력
1. 기본 형식
	insert into 테이블명 values(데이터1, 데이터2, 데이터3);
	insert into 테이블명(컬럼1, 컬럼2) values(컬럼1의입력데이터, 컬럼2의 입력데이터) 
 * */
SELECT * FROM EMP01;
-- 	모든 컬럼의 순서에 맞게 데이터를 입력하여야 한다.
--  1) 숫자형은 숫자 그대로
--  2) 문자열형은 '데이터'로
--  3) 날짜형은 오늘지금시간 : sysdate, 특정날짜 to_date( '20240101','YYYYMMDD')
INSERT INTO emp01 values(1000,'홍길동', '사원', 7839, sysdate, 4000,1000,10);
INSERT INTO emp01(empno, ename, hiredate) 
	values(1000,'홍길동', to_date('20240101','YYYYMMDD'));
SELECT * FROM emp01;
-- ex1) emp03으로 복사테이블 만들고, 전체 데이터를 입력,  사원번호, 이름, 2024/06/01, 부서번호를 입력하세요.
CREATE TABLE emp03 
AS 
SELECT * FROM emp WHERE 1=0;
SELECT * FROM emp03;
INSERT INTO emp03 values(1000,'마길동','CLER,', 7902, sysdate, 3000,100,10 );
INSERT INTO emp03(empno, ename, hiredate, deptno)	
	   VALUES(1002, '오길동', TO_DATE('2024/06/01','YYYY/MM/DD'),20);
	  



