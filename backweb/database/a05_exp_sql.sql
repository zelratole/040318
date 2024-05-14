--### SQL 연습 문제
--#### 1. 복수 조건 검색
--1. 부서 번호가 20이면서 직책이 'ANALYST'인 직원들의 이름과 급여를 조회하시오.
SELECT ename, sal
FROM emp
WHERE deptno = 20 
AND job = 'ANALYST';
--#### 2. 범위 지정 검색
--1. 급여가 1000에서 2000 사이인 직원들의 이름, 직책, 급여를 조회하시오.
SELECT ename, job, sal 
FROM emp
WHERE sal BETWEEN 1000 AND 2000;
--#### 3. Null 값 검색
--1. 매니저 ID(mgr)가 지정되지 않은 직원들의 이름과 부서 번호를 조회하시오.
SELECT ename, deptno 
FROM EMP 
WHERE mgr IS NULL;
--2. 커미션을 받지 않는 직원들 중 직책이 'CLERK'인 직원들의 이름과 부서 번호를 조회하시오.
SELECT ename, deptno
FROM emp
WHERE comm IS NULL
AND job = 'CLERK';


--#### 4. 복수 선택 검색
--1. 부서 번호가 10, 20 또는 40인 직원들의 이름과 급여, 부서 번호를 조회하시오.
SELECT ENAME, SAL,deptno
FROM emp
WHERE deptno IN (10,20,40);

--2. 직책이 'MANAGER', 'ANALYST' 또는 'CLERK' 중 하나인 직원들의 이름, 직책, 급여를 조회하시오.
SELECT ename, job, sal
FROM emp
WHERE job IN ('MANAGER','ANALYST','CLERK');


-----------------------------------
--#### 5. 논리 연산 활용
--1. 급여가 1500 이상이면서 커미션을 받는 직원들의 이름과 급여, 커미션을 조회하시오.
SELECT ename, sal, comm
FROM emp
WHERE sal>=1500
AND comm IS NOT NULL;
SELECT ename, sal, comm
FROM emp
WHERE sal>=1500
AND nvl(comm,0)>0; -- nvl(컬럼,0) : 컬럼에 null일때...
-- sal + comm : 둘 중에 하나라도 null 값을 연산을 하지 못한다. 즉 null
-- null일 때, default로 0으로 처리할려면 반드시 nvl()함수를 통해서 처리하여야 한다.
-- select sal + nvl(comm, 0) ==> null일 경우 0으로 처리한다.
-- where 조건문에서는 0인 경우와 null인 경우를 모두 제외하고 검색할 때.. 
-- where nvl(comm,0)>0으로 처리하여야 한다.

--2. 부서 번호가 10이 아니며, 급여가 3000 이하인 직원들의 이름과 급여, 부서 번호를 조회하시오.
SELECT ename, sal, deptno
FROM emp
WHERE deptno<>10 AND sal <=3000;
-------------------------------------------
--#### 6. 복잡한 논리 연산
--1. 직책이 'SALESMAN' 또는 'CLERK'이면서 부서 번호가 10 또는 30이 아닌 직원들의 이름, 직책, 부서 번호를 조회하시오.
SELECT ename, job, deptno
FROM emp
WHERE (job = 'SALESMAN' OR job='CLERK')
AND deptno NOT IN (10,30);


--2. 직책이 'MANAGER'가 아니며 급여가 2000 이상인 직원들의 이름과 직책을 조회하시오.
SELECT ename, job
FROM emp
WHERE job !='MANAGER'
AND sal>=2000;



