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

