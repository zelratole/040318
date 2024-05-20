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