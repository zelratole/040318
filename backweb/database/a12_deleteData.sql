/*
 # 데이터의 삭제
 1. 삭제는 행단위로 처리하기 때문에 특정한 컬럼을 지정하지는 못한다. 
 2. 기본 형식
 	delete
 	from 테이블명
 	where 조건문
 * */
SELECT * FROM emp04;
DELETE 
FROM emp04
WHERE deptno = 1000;
DELETE
FROM emp04
WHERE job LIKE '%MAN'
OR deptno = 20;
DELETE
FROM emp04
WHERE deptno IS NULL;
-- ex) emp05 복사테이블을 만들어 연봉이 4000이상이거나 부서번호가 10인 사원 정보를 삭체 처리하세요.
CREATE TABLE emp05
AS SELECT * FROM emp;
SELECT * FROM emp05;
DELETE 
FROM emp05
WHERE sal>=4000
OR deptno = 10;
/*
# 테이블 이름 바꾸기
rename 기본테이블명 to 바꿀테이블명
# 테이블 삭제하기
drop table 테이블명;
 * */

RENAME emp04 TO emp10;
SELECT * FROM emp10;
SELECT * FROM emp02;
DROP TABLE emp02;
--  ex) dept02 ==> dept20 테이블로 변경, dept20 테이블 삭제 처리.

SELECT * FROM dept;
-- 첫번째 row를 기준으로 class 정의
/*
class Dept{
	private int deptno;
	private String dname;
	private String loc;
}
==>
List<Dept> dlist = new ArrayList<Dept>();
List<Dept> dlist = Arrays.asList(new Dept(10,"회계","뉴욕"), new ...);

 * 
 * */


