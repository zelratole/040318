/*
# 조인
1. 하나의 sql명령문에 의해 여러 테이블에 저장된 테이블를 한번에 조회할 수 있게 하는 기능을 말한다.
2. 관계형 데이터베이스 분야의 표준으로 자리 잡고 있다.
3. 두개 이상의 테이블을 결합한다는 의미이다.
4. 단계별 학습 내용
	1) 기본 조인 구문 형식 이해 및 활용
	2) 여러가지 조인 구분 형식 활용
	3) subquery, inline view를 통한 조인 구문 처리
		그룹함수 처리 후, 조인 처리등..
	4) 여러가지 복합 형식의 조인 구문 처리
# 기본 조인 구분 형식
1. 테이블과 테이블간의 연관관계를 아래와 같이 설정한다.
	select 테이블별칭.컬럼1, 테이블별칭.컬럼2..
	from 테이블1 테이블별칭, 테이블2 테이블별칭
	where 별칭1.공통컬럼 = 별칭2.공통컬럼
2. 위 기본 조인 구문 형식은 두개의 테이블을 공통 컬럼을 기준으로
	inner 조인하는 것을 말한다.
	
	
 * */
SELECT e.*, d.dname, d.loc
FROM emp e, dept d
WHERE e.deptno = d.deptno;
CREATE TABLE emp_dept
AS SELECT e.*, d.dname, d.loc
FROM emp e, dept d
WHERE e.deptno = d.deptno;
SELECT * FROM emp_dept;
-- 위 테이블에서 7839의 부서명을 변경하면 같은 부서명의 일관성을 유지할 수 있는가?
-- 특정한 부서의 부서위치가 변경되면 사원정보의 모든 부서명을 다 변경해야한다. ==> 일관성/무결성에 문제발생..
-- 테이블 분리는 추후에 배우게 될 데이터베이스의 일관성 확보라는 원칙(무결성)에 의해 분리되어서
--    설계과정에서 정규화를 거쳐 분리된 것이다.

SELECT e.*, d.dname, d.loc
FROM emp e, dept d
WHERE e.deptno = d.deptno;

SELECT * FROM dept;

CREATE TABLE emp11
AS SELECT * FROM emp;
CREATE TABLE dept11
AS SELECT * FROM dept;

SELECT e.*, d.dname, d.loc
FROM emp11 e, dept11 d
WHERE e.deptno = d.deptno;
UPDATE dept11
	SET dname = '회계'
WHERE deptno = 10;
SELECT *
FROM emp_dept;

-- 이와같이 분리시켜 조인으로 처리하면 테이블의 데이터를 일관성 있게 처리할 수 있는 결과를 
-- 가져온다. 즉, 테이블은 필요에 따라 최대한 분리시켜야 하고, 필요한 관계에 있는 데이터를 join
-- 구문에 의해 처리되어야 한다.
SELECT * FROM  emp;
SELECT * FROM dept;

SELECT e.*, d.dname, d.loc
FROM emp e, dept d
WHERE e.deptno = d.deptno;
--ex) employees 테이블과 departments 테이블의 연관관계 있는 컬럼을 확인하고,
--	위 emp, dept를 조인하듯이 조인관계에 의해서 데이터를 출력하세요..
SELECT *
FROM employees
ORDER BY DEPARTMENT_ID;
SELECT *
FROM departments
ORDER BY DEPARTMENT_ID;
SELECT e.*, d.*
FROM employees e, departments d
where e.DEPARTMENT_ID = d.DEPARTMENT_ID;

-- 부서명, 사원명, 직책명, 급여, 부서위치
SELECT e.*, d.dname, d.loc
FROM emp e, dept d
WHERE e.deptno = d.deptno;
SELECT dname, ename, job, sal, loc --공통컬럼이 아닌 경우 명시적으로 테이블의 별칭을 생략가능
FROM emp e, dept d
WHERE e.deptno = d.deptno;


