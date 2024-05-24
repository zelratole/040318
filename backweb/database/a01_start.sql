SELECT * FROM emp;
SELECT * 
FROM emp
WHERE ename LIKE '%A%';
/*
# 데이터베이스 주석문(여러줄)
 * */
-- 데이터베이스 주석문(단일줄)
/*
# sql문
1. oracle sql은 oracle 데이터베이스를 위한 표준 쿼리 언어
2. 데이터를 관리하고 조작하는데 필수적인 도구로, sql(Structured Query Language)의 강력한
	확장을 포함
3. 주요 특징
	1) 다양한 데이터 유형 지원:
		oracle sql은 표준 숫자, 문자열 데이터 유형 외에도 날짜, 타임스템프, xml 등
		다양한 데이터 유형을 지원합니다.
	2) 고급 sql 기능 : 분석함수, 모델 함수, 정규표현식 등 고급 기능을 제공하여 복잡한
		데이터 분석과 처리가 가능합니다.
4. sql와 일반 프로그램 언어의 차이점
	1) sql
		용도 : 데이터베이스에서 데이터를 추출하여 문제 해결
		입출력 : 입력은 테이블, 출력은 테이블
		번역 : DBMS
		문법에 따른 기본 코드 :  select * from book;
	2) 일반 프로그래밍 언어
		용도 : 모든 프로그램적인 문제 해결
		입출력 : 모든 형태의 입출력 가능
		번역 : 컴파일러
		문법에 따른 기본 코드 : int main(){ 수행하는 코드}		

# sql기능에 따른 분류
1. 데이터 정의어(DDL)
	테이블이나 관계의 구조를 생성하는 데 사용
	create, alter, drop문 등이 있음
2. 데이터 조작어(DML)
	테이블에 데이터를 검색, 삽입, 수정, 삭제하는데 사용
	select, insert, delete, update 문 등이 있음
	select문는 특별히 질의어(query)라고 한다.
3. 데이터 제어어(DCL)
	데이터의 사용 권한을 관리하는데 사용
	grant, revoke 문 등이 있음.
# 기본 질의의 구조
select ename, job, loc    
from emp
where sal>=3000

1. select : 질의 결과 추출되는 속성 리스트를 열거한다.
	* : 전체 컬럼,
	ename, job, sal : 특정 컬럼
2. from : 질의에 어느 테이블이 사용되는지 열거한다.
3. where : 질의의 조건을 작성한다.
 * */
SELECT ename, job, sal
FROM emp
WHERE sal>=3000;  -- ctrl+enter
SELECT *
FROM emp;
/*
select * : 전체 컬럼명,   empno, ename,
from emp : 테이블명
where 조건문 : 컬럼명을 비교/논리연산식에 의해서 filtering 처리시 사용한다.

 * */
-- 컬럼명 선택
SELECT *
FROM emp; -- 전체 컬럼확인
SELECT empno, ename
FROM emp; -- 부분 컬럼명을 지정하여 출력
-- ex) *를 통해 전체 컬럼명을 확인한 후, 2개, 또는 3개, 순서를 바꾸어 4개 컬럼명을
--   지정하여 출력하세요
-- 1) 전체 컬럼명 지정 출력
SELECT *
FROM emp;
-- 2) 2개 컬럼명 지정 출력
SELECT ename, job
FROM emp;
-- 3) 3개 컬럼명 지정 출력
SELECT ename, job, sal
FROM emp;
-- 4) 4개 컬럼명 순서를 바꾸어 출력..
SELECT deptno, sal, mgr, ename, empno,deptno
FROM emp;
SELECT deptno
FROM emp;
-- distinct : 중복된 데이터를 제거하고 보이게 할 때.
SELECT DISTINCT deptno
FROM emp;
-- ex) emp테이블에 각 열별로 중복되는 컬럼을 확인하고, distinct로 중복을 
--     제거하고 열별로 출력해보세요..
SELECT *
FROM emp;
SELECT DISTINCT job
FROM emp;
SELECT DISTINCT mgr
FROM emp;
SELECT DISTINCT deptno, job -- 두개 컬럼 모두를 기준으로 동일하지 않게 출력..
FROM emp;
/*
# 컬럼명 별칭으로 사용하기
1. 모든 테이블의 구성요소 컬럼은 select 컬럼명으로 사용하여 호출 할 수 있다.
2. 그러나, 특정한 경우에는 컬럼명을 변경하거나 통합된 컬럼명으로 처리해야 하는 경우가 있다.
	ex) 컬럼간의 연산, 문자열 연결
	select empno||ename 사원번호와 사원명연결
		   ename || '님' 사원명과 '님' 문자연결
	# 데이터베이스에서는 + 연산자는 숫자형 연산시만 활용, 문자열 연결시 문자열||문자열 활용한다.
3. 기본형식
	select 컬럼명 as 컬럼명 별칭   : as를 키워드로 별칭 사용
	       컬럼명 컬럼명별칭 : 공백을 이용해서 별칭 사용
4. 별칭컬럼명의 예외 사항
	1) 컬럼명은 특수 문자나 공백을 포함할 경우
		"특수문자 "
		와 같이 "" 사이에 넣어서 처리한다.
 * */
SELECT *
FROM emp; -- 초기에 컬럼명과 해당 구조로 테이블을 만들었기에 그 기본 순서를 출력 해준다.
-- 컬럼명과 컬럼순서, 타입과 구성요소를 변경.. ==> alias명, ||, 연산자 활용하여 처리..
SELECT empno AS NO, ename "이 름"
FROM emp;

SELECT empno, empno AS 사원번호별칭, ename 사원명, job "##직 책##",
       empno||ename AS "사원번호와 사원명"
FROM emp;
-- 별칭을 사용하면 아래와 같이 테이블의 타이틀이 변경이 된다.

-- ex) 다음의 각 컬럼에 alias를 한글로 설정하여 출력하세요 .as, 공백 둘다 활용
-- empno : 사원번호, ename 사원명, job 직 책, mgr 관리자 번호, hiredate 입사일
-- sal : $급여$, comm 보너스, deptno 부서번호, 'Dear!' || ename 호칭  으로
-- 처리하여 출력하세요..
 
SELECT empno AS 사원번호, ename 사원명, job "직 책", mgr AS "관리자 번호",
	hiredate 입사일, sal "$급여$", comm 보너스, deptno 부서번호,
	'Dear!! '|| ename as "호칭"
FROM emp;




