/*
# 데이터 수정 처리
1. 기본 형식
	update 테이블명
	   set 컬럼1명 = 수정할데이터,
	       컬럼2명 = 수정할데이터,
	       ..
	 where 조건(컬럼 바교연산자)
	 
 * */
SELECT * FROM EMP01;
UPDATE emp01
   SET ename = '오길동'
 WHERE empno = 7369;
UPDATE emp01
   SET sal = sal + 1000,  -- 기존 sal에 1000더하여 줌
       deptno = 50
 WHERE sal < 1000; -- 1000미만인 조건
-- ex1) job 이 SALESMAN 인 데이터를 셀즈맨 이라고 변경
UPDATE emp01
   SET job='셀즈맨'
 WHERE job = 'SALESMAN';
SELECT * FROM EMP01;
-- ex2) 부서번호가 20인 데이터의 급여를 현재 급여에서 10%인상하여 처리하세요
UPDATE emp01
   SET sal = sal + sal*0.1
 WHERE deptno = 20;  
/*
# 컬럼의 크기 변경
1. 컬럼에 데이터 입력시, 수정시 해당 컬럼의 데이터 타입이 맞지 않거나 더 많은 
	데이터를 입력해야 하는 경우에 아래 형식으로 구조를 변경한다.
2. 기본 형식
	alter table 테이블명
	modify 컬럼명 변경할유형;
 * */
SELECT * FROM emp01;
INSERT INTO emp01(ename) values('MR.홍길동');
/*
value too large for column "SCOTT"."EMP01"."ENAME" (actual: 12, maximum: 10)
 * */
ALTER TABLE emp01
MODIFY ename varchar2(50);
-- ex1) emp04로 복사테이블을 만들고, 사원명, 직책의 크기를 varchar2(100)으로 변경하세요
--      그리고, 등록과, 수정을 처리해보자.
CREATE TABLE emp04
AS SELECT * FROM emp;
SELECT * FROM emp04;
ALTER TABLE emp04
modify(
	ename varchar2(100),
	job varchar2(100)
);
INSERT INTO emp04(ename, job) values('홍길동맨입니다!!^^','부산에 있는 대리');
UPDATE emp04
   SET ename = '마아틴!!^^',
       job = '서울에서 세일즈'
  WHERE empno = 7654;    






