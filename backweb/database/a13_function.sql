/*
# SQL 함수
1. 컬럼의 값이나 데이터 타입의 변경하는 경우에 내장된 함수를 호출하여 처리한다.
2. 숫자 또는 날짜 데이터의 출력 형식이 변경하는 경우 즉, 형변환 함수가 있고,
3. 하나 이상의 행에 대한 집계를 하는 경우가 있다.
# SQL 함수의 유형
1. 단일행 함수 : 테이블에 저장되어 있는 개별 행을 대상으로 함수를 적용하여
	하나의 결과를 반환하는 함수
	- 데이터 값을 조작하는데 주로 사용된다.
	- 행별로 함수를 적용하여 하나의 결과를 반환하는 함수이다.
	1) 종류
		숫자함수
		문자함수
		날짜함수
		변환함수
		일반함수
	2) 사용방법
		함수명(컬럼명|표현식, 매개변수1, 매개변수2...)
2. 복수행 함수 : 조건에 따라 여러 행을 그룹화하여 그룹별로 결과를 하나씩 반환하는 함수
	1) 사용방법
		select  그룹대상컬럼, 그룹함수(그룹데이터)
		from 테이블
		group by 그룹대상컬럼
		ex) 부서번호별 최고 급여
		select deptno, max(sal)
		from emp
		group by deptno;		
 * */
-- 문자함수 : 문자 데이터를 입력하여 문자나 숫자를 결과로 반환하는 함수
--1. initcap() 문자의 첫 번째 문자만 대문자로 변환
SELECT ename, initcap(ename), job, initcap(job)
FROM emp;
--ex) 위 내용을 ||(연결 처리)와 함께 Smith is a Clerk! 형식으로 출력하세요.. 사원명 is a 직책명!
SELECT initcap(ename)|| ' is a '||initcap(job)|| '!' intro
FROM emp;

 


