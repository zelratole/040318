/*
# 데이터 정렬처리
1. sql명령문에서 검색된 결과는 테이블에 데이터가 입력된 순서로 일반적으로 출력된다.
2. 데이터의 출력 순서를 특정 컬럼을 기준으로 오름차순/내림차순으로 정렬하는 경우가 발생한다.
3. 여러 개의 컬럼에 대해 정렬 순서를 지정해서 처리해야 할 경우
	1차로 컬럼명 정렬옵션, 2차로 컬럼명 정렬옵션으로 오름차순/내림차순으로 처리한다.
4. 기본적인 정렬 방법
	1) 문자값을 알파벳순으로 출력되고, 한글은 가나다라 순으로 출력된다(오름차순)
	2) 숫자값을 가장 작은 값으로부터 점점 더 큰 값으로 정렬된다.(오름차순)
	위 정렬의 반대 형식은 내림차순이라고 한다.
5. 기본 형식
	select
	from 테이블
	where  조건
	order by 컬럼명 [asc|desc], 컬럼2 [asc|desc]
	
	asc : 모든 정렬을 오름차순이 default이다. 즉, 옵션을 정하지 않으면 오름차순
		order by  컬럼1  : 컬럼1을 오름차순 정렬
	desc : 역순/내림차순 정렬
		내림차순을 처리할 때는 컬럼명에서 한칸 띄워 desc라고 명시적으로 선언하여야 한다.
		order by  컬럼2  desc : 컬럼2를 내름차순 정렬
		
**/
SELECT *
FROM emp;

SELECT *
FROM emp
ORDER BY empno;

SELECT *
FROM emp
ORDER BY empno DESC;

SELECT *
FROM EMP
ORDER BY deptno, sal desc; -- deptno 기준으로 오름 차순, 부서번호 갈 때는 급여를 내림차순..

-- ex1) 연봉이 가장 높은 사람부터 가장 낮은 사람 순으로 급여와 이름을 출력하세요..
SELECT sal, ename
FROM emp
ORDER BY sal DESC;
-- ex2) job을 abc..순으로 정렬하여 출력하세요.
SELECT job job2, e.* -- 테이블 전체를 나타내고 또, 특정한 컬럼을 강조해서 보고자 할때, 활용..
FROM emp e  -- emp e : e 테이블 별칭 
ORDER BY job;
-- ex3) 입사일(hiredate)가 가장 먼저 입사한 사람부터, 가장 마지막에 입력한 사람 순으로 정렬하세요.
SELECT hiredate hiredate2, e.*
FROM emp e
ORDER BY hiredate;










