/*
# ORACLE에서 WHERE조건문으로 키워드 검색 처리
1. 컬럼 LIKE를 활용하여 비슷한 키워드로 검색을 할 수 있다.
	EX)  ename에서 S가 포함되는 경우, job 'MAN'가 포함되는 경우..
2. 기본 형식
	1) WHERE 컬럼명 LIKE '%키워드%'
		해당 컬럼의 구성요소로 특정한 키워드를 포함되는 경우를 검색
		ex) 웹 시스템에서 검색할 경우 많이 사용되는 형태.
	2) where 컬럼명 like '시작키워드%'
		해당 컬럼에 특정 시작키워드로 처리되는 경우
		ex) '사과%' 반드시 앞에 사과가 붙여 있고 그 외는 다른 용어가 붙어 있는 것 의미 
		
	3) where 컬럼명 like '%마지막키워드'
		해당 컬럼에 특정 마지막키워드로 종료되는 경우
		ex) '%세일품목'  반드시 마지막에 세일품목이라고 끝날 때 검색됨..
	4) where 컬럼명 like '_A%'
		두번째 문자가 A로해서 시작되는 경우
		_ : 한칸당 해당 자리를 정확하게 지키주는 것을 의미, 문자열이 어떤 내용인지는 문제가 안됨
		한자리 문자를 포함해서 두번째 문자가 'A'로 되어 있고 그외에 여러가지 문자가 있는 경우
		ex) '_A%'   ==> 'BAKER' 'CAKE' '홍A플러스' 	
	5) where 컬럼명 like '__A__'
		총글자가 5자이고, 중간에 A인 경우..
		ex) 위 같은 경우 앞에 두글자를 두고, 반드시 세번째 A문자를 두고, 그 뒤에 문자 수가
			2글자인 경우를 말한다.
			'__A__'  다섯글자에 중간에 A를 포함하는 경우를 말한다.
				LOATE  ABAKE  
		
		
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
FROM emp
WHERE job LIKE '__E__'; -- 총글자가 5자이고, 3번째 E가 포함된 사원 정보
-- ex1) 앞에서 4, 5번째 ES를 포함한 직책(job)이 있는 사원정보
-- ex2) 뒤에서 세번째 자리에 M이 포함된 직책(job) 검색
-- ex3) 자리수가 5자기이고, 중간에 I자 포함된 사원명(ename)이 있는 사원정보
SELECT * FROM emp;
SELECT *
FROM EMP
WHERE job LIKE '___ES%';
SELECT *
FROM emp
WHERE job like '%M__';
SELECT *
FROM emp
WHERE ename LIKE '__I__';







SELECT *
FROM emp;
--