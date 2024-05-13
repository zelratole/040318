/*
# ORACLE에서 WHERE조건문으로 키워드 검색 처리
1. 컬럼 LIKE를 활용하여 비슷한 키워드로 검색을 할 수 있다.
	EX)  ename에서 S가 포함되는 경우, job 'MAN'가 포함되는 경우..
2. 기본 형식
	1) WHERE 컬럼명 LIKE '%키워드%'
		해당 컬럼의 구성요소로 특정한 키워드를 포함되는 경우를 검색
	2) where 컬럼명 like '시작키워드%'
		해당 컬럼에 특정 시작키워드로 처리되는 경우
	3) where 컬럼명 like '%마지막키워드'
		해당 컬럼에 특정 마지막키워드로 종료되는 경우
	4) where 컬럼명 like '_A%'
		두번째 문자가 A로해서 시작되는 경우
	5) where 컬럼명 like '__A__'
		총글자가 5자이고, 중간에 A인 경우..
		
 * */
SELECT * FROM emp;
SELECT *
FROM emp
WHERE ename LIKE '%A%';
-- ex) job에서 ES가 포함된 사원 정보 출력
SELECT *
FROM EMP e 
WHERE job LIKE '%ES%';
SELECT * FROM emp;
SELECT *
FROM emp
WHERE ename LIKE 'A%';
select *
FROM emp
WHERE job LIKE '%MAN';
-- EX1) ename이 JO로 시작되는 사원정보 출력
SELECT *
FROM emp
WHERE ename LIKE 'JO%';
-- EX2) job이 ER로 끝나는 사원정보 출력
SELECT *
FROM emp
WHERE job LIKE '%ER';

SELECT *
FROM emp;

SELECT hiredate, to_char(hiredate)  -- to_char() 문자열 형식으로 바꾸는 처리
FROM emp
WHERE hiredate LIKE '81%'; -- 키워드 검색시 화면에 보이는 것과 달리 to_char()에 의해 검색

SELECT *
FROM emp
WHERE ename LIKE '_A%'; -- 두번째 글자가 A를 포함되어 시작하는 정보 출력..







SELECT *
FROM emp;
--