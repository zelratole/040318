/*
# 그룹함수란?
1. 테이블의 전체 행을 하나 이상의 컬럼을 기준으로 그룹화하여 그룹별로 결과를 출력하는 함수,
	그룹함수는 통계적인 결과를 출력하는데 자주 사용한다.
2. 기본 형식
	select 기준컬럼, 그룹함수(컬럼)
	from 테이블
	where 조건문
	group by 그룹컬럼
	having 그룹함수를 적용한 결과를 조건처리
3. 그룹함수의 종류
	1) count() : null을 제외한 데이터의 건수, 행의 건수
	2) max() : null을 제외한 모든 행의 최대값
	3) min() : null을 제외한 모든 행의 최소값
	4) sum() : null을 제외한 모든 행의 합
	5) avg() : null을 제외한 모든 행의 평균값
	6) stddev() : null을 제외한 모든 행의 표준편차
	7) variance() : null을 제외한 모든 행의 분산
	
 * */
SELECT COMM
FROM emp;
SELECT count(comm)
FROM emp;
-- emp테이블에서 comm의 전체 컬럼의 null을 제외한 데이터 건수
SELECT max(comm), min(comm), avg(comm)
FROM emp;

SELECT deptno, sal
FROM EMP e 
order BY deptno, sal;
-- 부서별로 sal를 가진 사원의 수, 부서별 최대 급여, 최소급여
SELECT deptno, count(sal), max(sal), min(sal)
FROM emp
GROUP BY deptno
ORDER BY deptno;
-- ex) 직책별(job)별 최고급여, 최저급여, 
SELECT job, sal
FROM emp
ORDER BY job, sal;
SELECT job, max(sal), min(sal)
FROM emp
GROUP BY job
ORDER BY job;
-- ex) 입사일(hiredate) 기준, 최초입사일, 최근입사일
SELECT min(hiredate), max(hiredate)
FROM emp;
SELECT deptno, min(hiredate), max(hiredate)
FROM emp
GROUP BY deptno
ORDER BY deptno;

-- 그룹함수에 의해 나타난 결과를 조건 처리할 때 사용하는 having
-- 부서별 최고 급여에서 최고 급여를 3000이상인 경우만 검색시 having 그룹함수의 조건식
SELECT job, max(sal)
FROM emp
GROUP BY job
HAVING max(sal)>=3000
ORDER BY job;
-- ex) 


