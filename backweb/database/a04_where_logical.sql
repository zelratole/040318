/*
	3) 컬럼명 is null, 컬럼명 is not null  : 값이 없을 때 처리 
		주의) 컬럼 = null(항상 false)로 원하는 결과를 얻지 못한다.
 * */
SELECT comm
FROM emp;
SELECT *
FROM emp
WHERE comm = NULL; -- null을 검색해주지 않는다. 항상 false(사용 불가.)
SELECT *
FROM emp
WHERE comm is NULL; -- NULL 값인 경우 검색
SELECT *
FROM emp
WHERE comm IS not NULL; -- null값이 아닌 경우 검색
-- ex) 사원번호, 사원명, 급여+보너스(comm)를 출력하되 보너스가 있는 경우만 출력하세요.
SELECT empno 사원번호, ename 사원명, sal 급여, comm 보너스, sal + comm "급여+보너스"
FROM emp;
-- comm이 null이면 연산 결과값을 확인할 수 없다.
SELECT empno 사원번호, ename 사원명, sal 급여, comm 보너스, sal + comm "급여+보너스"
FROM emp
WHERE comm IS NOT null;

SELECT empno 사원번호, ename 사원명, sal 급여, comm 보너스, sal + comm "급여+보너스"
FROM emp
WHERE comm IS NOT NULL
AND comm != 0;
-- nvl(컴럼명, 0) : 해당컬럼이 null이면 0, 그외는 해당 컬럼값을 처리
SELECT  ename 사원명, sal 급여, comm 보너스, 
		nvl(comm,0) 보너스2, 
		sal + comm  "급여+보너스 1", 
		sal + nvl(comm,0) "급여+보너스 2"
FROM emp;
-- ex) nvl를 활용하여  급여 + 보너스 합산 2500 이상인 사원의 사원명, 급여, 보너스, 합산을 출력하세요.

SELECT ename 사원명, sal 급여, comm 보너스, sal+nvl(comm,0) 합산
FROM emp
WHERE sal+nvl(comm,0)>=2500;
/*
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
-- 급여(SAL)에 300을 더한 값이 1000보다 크고, 커미션(COMM)이 0보다 큰 직원
SELECT sal+300, 2000, comm, 0
FROM emp;
SELECT *
FROM emp
WHERE sal+300 > 1000
AND comm>0;
--  매니저 번호(MGR)를 2로 나눈 결과가 750보다 작거나 커미션(COMM)이 NULL인 직원
SELECT *
FROM emp
WHERE mgr/2 < 750
OR comm IS NULL;
-- ex1) 커미션(COMM)이 급여(SAL)의 10%보다 크지 않고, 직급(JOB)이 'CLERK'가 아닌 직원
-------------------------
SELECT *
FROM EMP 
WHERE  comm <= sal*0.1
AND job != 'CLERK'; --  job <> 'CLERK'
-- ex2) 급여(SAL)를 4로 나눈 결과가 1000보다 작지 않거나, 부서번호(DEPTNO)가 30인 직원
SELECT *
FROM EMP
WHERE SAL/4>=1000 OR DEPTNO =30;

-- ex3) 급여(SAL)가 2000 이상이며, 부서번호(DEPTNO)가 10이거나 20이 아닌 직원
SELECT *
FROM emp
WHERE sal >= 2000
AND not(deptno = 10 OR deptno = 20);
SELECT *
FROM emp
WHERE sal >= 2000
AND deptno NOT IN(10,20); -- in(데이터1, 데이터2) 둘다 해당하는 경우 or로 연결된다.
-- 컬럼명 between 시작 and 마지막..
SELECT *
FROM emp
WHERE sal BETWEEN 1000 AND 3000;
SELECT *
FROM emp
WHERE sal >= 1000 AND sal <= 3000;

SELECT * FROM emp;
--  ex) 부서번호가 10이고 급여가 3000~5000 사이인 사원정보를 출력하세요.
SELECT *
FROM emp
WHERE deptno = 10
AND sal BETWEEN 3000 AND 5000;





















