/*
# 여러가지 조인구문 형식
1. 조인은 기본 inner와 함께 여러가지 형식이 있다.
2. 조인 형식
	1) inner join(equi join) : 기본 join형식으로 테이블간의 연관관계가 있는 테이블을 조인한 후,
		해당 공통 컬럼기준으로 조인하는 것을 말한다.
	2) outer join : 위 inner join(equi join)의 조인에서는 양측 테이블의 공통되는
		컬럼 중, 어느 하나라도 null이면 비교 결과 null값을 가진 행으로 출력되지 않는다.
		이 때, 한쪽에 null이라도 해당 내용을 출력하고자 할때는 outer join을 사용한다.
		ex) 부서테이블에는 40 deptno가 있다. 하지만 사원테이블에는 40 deptno가 입력되지
			않았다. 이때, 부서별 사원정보 등록 현황을 보고자한다면 위 outer join을 이용하여야 한다.
	3) self join : 테이블 컬럼안에 내부적으로 연관관계가 있는 컬럼간의 조인을 말한다.
		사원테이블 안에서 empno와 mgr은 내부적으로 계층관계에 의해 join관계가 있다. 즉, 관리자
		컬럼(mgr)의 이름을 알고자 한다면  mgr의 empno를 확인하고 그 행의 ename을 확인하여야 한다.
		이때, self join이라는 개념을 감안하여 sql을 작성하여야 한다.
	4) non equi join : equi join은 두개의 테이블간의 공통되는 컬럼데이터를 기준으로 조인을 한다면
		non equi join은 해당 컬럼에서 동일한 데이터를 기준으로 하는 것이 아니라 특정함 범위로 join
		할 때, 사용된다. 사원정보(emp) 테이블의 sal와  salgrade테이블의 losal과 hisal은 동일한
		내용이 아니라 범위로 join 관계를 설정하는 것을 볼 수 있다.	
**/
-- outer 조인
SELECT d.*, e.deptno, e.empno, e.ename
FROM emp e, dept d
WHERE e.deptno(+) = d.deptno; 
SELECT *
FROM emp;
SELECT e.ename, e.mgr, m.empno,  m.ename, 
	e.ename ||'의 관리자는 '||m.ename ||' 이다' show
FROM emp e, emp m
WHERE e.mgr = m.empno;


SELECT * FROM EMPLOYEES;
SELECT * FROM DEPARTMENTS ORDER BY DEPARTMENT_ID ;
--  두개 테이블을 이용해서 부서별로 사원현황을 출력하세요.. (부서가 할당되지 않는 사원도 표현)
SELECT d.*, e.*
FROM EMPLOYEES e, DEPARTMENTS d
WHERE e.DEPARTMENT_ID(+) = d.DEPARTMENT_ID
ORDER BY d.DEPARTMENT_ID;
-- 부서별 등록 현황 join 처리(group by 통계치 설정)
SELECT d.DEPARTMENT_ID, count(e.EMPLOYEE_ID) 건수, 
		min(e.SALARY) 최저급여, max(e.SALARY) 최고급여
FROM EMPLOYEES e, DEPARTMENTS d
WHERE e.DEPARTMENT_ID(+) = d.DEPARTMENT_ID
GROUP BY d.DEPARTMENT_ID
ORDER BY d.DEPARTMENT_ID;
/*
# sub query
1. where 조건문이나 select 구문에도 쓰는 경우가 있는데, 해당 subquery가 가장 먼저 실행
	되는 원칙으로 main query에 결과를 처리하는 경우를 말한다.
2. 예를 들어 가장 급여가 높은 사원 정보를 출력할 때, 가장 높은 급여는 가져올 수 있지만
	한번에 그 급여에 해당하는 사원 정보는 다시 query를 해야하는 경우를 말한다.
3. 이때, 가장 높을 급여을 먼저 query 후, select max(sal) from emp
	이것을 사원 정보에 대입 처리
	select *
	from emp
	where sal = ( salect max(sal) from emp );
4. 이렇게 query안에 query를 처리하여 원하는 데이터를 처리하는 것을 subquery라고 한다.
5. 결과 값이 2개 이상 일 때는 in 구문을 사용한다.		 
 * */
--SELECT max(sal), e.*
--FROM emp e;

SELECT *
FROM emp
WHERE sal = (SELECT max(sal) FROM emp ); -- 가장 급여가 높은 사원정보
-- 부서별 최고급여자 정보
SELECT *
FROM emp
WHERE (deptno, sal) in( SELECT deptno, max(sal) 
						FROM emp GROUP BY deptno )
ORDER BY deptno;	
-- ex1) 가장 최근에 입사한 사원정보를 employees 기준으로 출력하세요.
-- ex2) job_id(직책)별 최저 급여자 사원정보 출력(employees)
SELECT * FROM EMPLOYEEs;
SELECT *
FROM EMPLOYEES e 
WHERE HIRE_DATE  = (SELECT max(HIRE_DATE) FROM EMPLOYEES  );
SELECT *
FROM EMPLOYEES e 
WHERE (JOB_ID, SALARY) in(
	SELECT JOB_ID, min(SALARY)
	FROM EMPLOYEES e2 
	GROUP BY job_id
);

--# non equi join
--  급여를 등급별로 확인하기..
SELECT * 
FROM SALGRADE;
SELECT ename, sal
FROM emp;
SELECT ename, sal, grade, losal, hisal
FROM emp, salgrade
WHERE sal BETWEEN losal AND hisal;

SELECT first_name, SALARY 
FROM EMPLOYEES;
-- ex) employees 테이블에 salary를 확인하여 4분위로 적절하게 등급이 나뉜 테이블을 만들고,
--  empsalgrade(테이블) grade  losal  hisal
--                     A등급  @@@           가장높은범위
--                     ....   
--  non equi join으로 사원명 급여 등급을 표현하세요..
SELECT min(SALARY), avg(SALARY), max(SALARY)
FROM EMPLOYEES;

CREATE TABLE empsalgrade(
	grade char(1),
	LOSAL NUMBER,
	hisal number
);
INSERT INTO empsalgrade values('A', 24000,99999);
INSERT INTO empsalgrade values('B', 7400,23999);
INSERT INTO empsalgrade values('C', 2201,7399);
INSERT INTO empsalgrade values('D', 0,2200);
SELECT * FROM empsalgrade;
SELECT first_name, salary, grade
FROM EMPLOYEES, empsalgrade
WHERE SALARY BETWEEN losal AND hisal;





