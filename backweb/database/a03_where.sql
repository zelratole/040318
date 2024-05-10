SELECT * FROM emp;
/*
# where 조건문 처리
1. 행단위 데이터로 필터링하여 검색할 때, 주로 사용된다.
2. where 조건절에는 컬럼명을 기준으로 여러가지 비교연산식과 논리연산식을 처리한다.
3. 기본 형식
	select 컬럼, ..
	from 테이블
	where 비교연산식 또는 논리 연산식
4. 사용되는 비교연산식 종류
	1) 컬럼명 = 데이터 (동등비교) 주의) 프로그램의 == 가 아님..
	2) 컬럼명 >, <, >=, <=, !=, <> 등을 활용(이 부분은 프로그램과 동일)
	3) 컬럼명 is null, 컬럼명 is not null  : 값이 없을 때 처리 
		주의) 컬럼 = null(항상 false)로 원하는 결과를 얻지 못한다.
5. 사용되는 논리연산식 종류
	1) 위 비교연산식에서 and, or, not 등을 활용한다.
		컬럼명1 = 데이터1 and 컬럼명2 = 데이터2	
		컬럼명1 = 데이터1 or 컬럼명1 = 데이터1
		not (컬럼명1 = 데이터1)	
		not (컬럼명1 >= 데이터1 and 컬럼명2 = 데이터2)	
6. 이외에서 여러가지 연산 키워드를 통한 비교/논리연산을 처리하고 있다.
	1) 컬럼명 in (데이터1, 데이터2, 데이터3)
		컬럼에 데이터1 또는 데이터2 또는 데이터 3이 있는 경우 
	2) 컬럼명 between 시작데이터 and 마지막데이터
		컬럼에 범위를 지정하여 검색해준다.
	3) exists, not exists 존재하는 경우, 그렇지 않는 경우 등등..
 * */
-- 숫자데이터 비교
-- 연봉이 2000이상인 사원정보
SELECT *
FROM emp
WHERE sal>=2000;
-- 문자열 데이터 비교
SELECT *
FROM emp
WHERE job = 'MANAGER';  -- 직책이 관리자인경우..
-- EX1) 관리자번호(mgr)이 7839인 데이터의 사원명, 사원번호, 관리자번호를 출력하세요.

SELECT ename "사원명", empno 사원번호, mgr 관리자번호
FROM emp
WHERE mgr = 7839;
-- ex2) 직책(job)이 'CLERK'인 사원명(ename), 직책명, 급여(SAL), 부서번호(deptno)를 출력하세요..
-----------------
SELECT ename 사원명, job 직책명, sal 급여, deptno 부서번호
FROM emp
WHERE job = 'CLERK';
SELECT *
FROM emp;
--ex) ename이 'WARD'인 사원의 사원번호, 사원명, 직책명, 입사일(hiredate)를 출력하세요.
-----------------------------------------------
SELECT empno 사원번호, ename 사원명, job 직책명, hiredate 입사일
FROM emp
WHERE ename = 'WARD';
-- ex3) 부서번호(deptno)가 10인 사원전체 정보를 출력하세요.
SELECT *
FROM emp
WHERE deptno = 10;
-- 위, 사칙연산자와 비교연산자를 혼합한 문제...
-- 급여(sal)를 2로 나눈 값이 1500보다 큰 직원을 찾은 쿼리
SELECT ename, sal,  sal/2 "급여를 2로 나눈값"
FROM emp;
SELECT *
FROM emp
WHERE sal/2>=1500;
-- 급여(SAL)와 커미션(COMM)의 합이 직원번호(EMPNO)의 10배보다 작은 직원을 찾는 쿼리를 작성하세요.
SELECT sal, comm,  empno, empno*10, sal+comm "합"
FROM emp
WHERE sal+comm < empno*10;
SELECT *
FROM emp
WHERE sal + comm < empno*10;
--ex1) 급여(SAL)에 500을 더했을 때 부서번호(DEPTNO)의 50배보다 큰 직원을 찾는 쿼리를 작성하세요.
--------------------------
--ex2)부서번호(DEPTNO)가 급여(SAL)을 40으로 나눈 결과보다 작거나 같은 직원을 찾는 쿼리를 작성하세요.
--ex3)커미션(COMM)이 급여(SAL)의 15% 이하인 직원 중 급여가 2500 이상인 직원을 찾는 쿼리를 작성하세요.
--    (논리식포함and)























