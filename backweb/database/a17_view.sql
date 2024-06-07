/*
# view
1. 오라클에 view는 하나 이상의 테이블의 데이터에 대해 쿼리를 지정해 놓은 가상 테이블 입니다.
	view는 실제 데이터를 저장하지 않고, 뷰를 정의한 쿼리가 저장되어 있으며, 뷰를 통해 데이터를
	조회하면 뷰 정의에 따른 쿼리가 실행됩니다.
2. view 주요 속성
	1) 가상 테이블 : 물리적으로 데이터를 저장하지 않고 쿼리로 정의된 가상 테이블입니다.
	2) 데이터 보안 : 사용자에게 직접 테이블을 보여주지 않고, 필요한 데이터만 제공할 수 있습니다.
	3) 데이터 단순화 : 복잡한 쿼리를 뷰로 정의하면 간단하게 사용할 수 있습니다.
	4) 독립성 : 테이블 구조가 변경되더라도 뷰를 통해 접근하는 사용자에게는 영향을 최소화 할 수 있습니다.
3. 뷰 생성 기본 형식
	create view 뷰테이블명 
	as select * from ...(sub query)
# 권한 부여
1. cmd sqlplus
2. system/1111
3. 생성 권한
	grant create view to scott;
4. 삭제 권한
	grant drop any view to scott;	
 * */
CREATE VIEW emp_view
AS SELECT empno, ename, job, deptno
FROM emp;
SELECT * FROM emp_view;
-- ex) 급여가 3000 ~ 5000 사이에 있는 사원번호, 사원명, 직책명, 급여, 부서번호로
--     구성된 view를 emp_sal01만들고 조회해보세요..
CREATE VIEW emp_sal01
AS SELECT empno, ename, job, sal, deptno
FROM emp
WHERE sal BETWEEN 3000 AND 5000;
SELECT * FROM emp_sal01;
--# 수정/삭제하기
--1. 생성시 만들어진 view가 있으면 수정을 하고, 만들어진 것을 없으면 삭제하는 create or replace를
--   통해서 수정과 삭제를 처리할 수 있다.
CREATE VIEW test_view 
AS SELECT empno, ename FROM emp;
CREATE OR REPLACE VIEW test_view
AS SELECT empno, ename, job FROM emp;
SELECT * FROM test_view;
--  마지막으로 view는 drop view 뷰테이블로 삭제한다.
DROP VIEW test_view;
-- ex) 부서, 급여가 있는 뷰를 만들고, 이를 최고급여, 최저급여, 평균급여가 있는 뷰로 변경후,
--      마지막으로 삭제 처리하세요.  emp_statics_view
CREATE VIEW emp_statics_view
AS SELECT deptno, sal
FROM emp ORDER BY deptno, sal;
SELECT * FROM emp_statics_view;
CREATE OR REPLACE VIEW emp_statics_view
AS SELECT deptno, max(sal) mxsal, min(sal) misal, avg(sal) avsal
FROM emp
GROUP BY deptno
ORDER BY deptno;
SELECT * FROM emp_statics_view;
DROP VIEW emp_statics_view;











