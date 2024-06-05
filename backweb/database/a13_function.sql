/*
# SQL 함수
1. 컬럼의 값이나 데이터 타입의 변경하는 경우에 내장된 함수를 호출하여 처리한다.
2. 숫자 또는 날짜 데이터의 출력 형식이 변경하는 경우 즉, 형변환 함수가 있고,
3. 하나 이상의 행에 대한 집계를 하는 경우가 있다.
# SQL 함수의 유형
1. 단일행 함수 : 테이블에 저장되어 있는 개별 행을 대상으로 함수를 적용하여
	하나의 결과를 반환하는 함수
	- 데이터 값을 조작하는데 주로 사용된다.
	- 행별로 함수를 적용하여 하나의 결과를 반환하는 함수이다.
	1) 종류
		숫자함수
		문자함수
		날짜함수
		변환함수
		일반함수
	2) 사용방법
		함수명(컬럼명|표현식, 매개변수1, 매개변수2...)
2. 복수행 함수 : 조건에 따라 여러 행을 그룹화하여 그룹별로 결과를 하나씩 반환하는 함수
	1) 사용방법
		select  그룹대상컬럼, 그룹함수(그룹데이터)
		from 테이블
		group by 그룹대상컬럼
		ex) 부서번호별 최고 급여
		select deptno, max(sal)
		from emp
		group by deptno;		
 * */
-- 문자함수 : 문자 데이터를 입력하여 문자나 숫자를 결과로 반환하는 함수
--1. initcap() 문자의 첫 번째 문자만 대문자로 변환
SELECT ename, initcap(ename), job, initcap(job)
FROM emp;
--ex) 위 내용을 ||(연결 처리)와 함께 Smith is a Clerk! 형식으로 출력하세요.. 사원명 is a 직책명!
SELECT initcap(ename)|| ' is a/an '||initcap(job)|| '!' intro
FROM emp;
/*
2. 대소문자 변환
	주로 실무상 대소문자 구분없이 검색이 필요하거나 또는 입력/수정시 입력되는 내용이 대소문자로 변환해서
	등록 수정되게 할 때, 주로 활용된다.
	1) lower() : 소문자 변환
	2) upper() : 대문자로 변환
 * */
SELECT ename, lower(ename) "사원명(소문자)", job||upper('- Hi! Man!!!') "조합(대문자)"
FROM emp;
SELECT first_name||' ' ||last_name "전체이름1",
       upper(first_name||' ' ||last_name) "전체이름2"
 FROM employees;
-- ex) employee 테이블을 이용하여 job_id는 소문자, email은 소문자, first_name은 대문자로 변환하여
--    직책 @@@인 @@@의 이메일은 @@@ 입니다.   라고 출력되게 하세요..
SELECT '직책 '||lower(job_id) ||'인 '|| upper(first_name) ||'의 이메일은 '||lower(email) ||' 입니다.' show
FROM EMPLOYEES;

-- 대소문자 상관없이 검색하는 처리
SELECT lower(first_name) 이름, e.*
FROM EMPLOYEES e 
WHERE lower(first_name) LIKE lower('%J%'); -- 입력이 대문자일지라도 lower로 함수로 변환되었기에 검색된다.

--ex) email과 job_id가 대소문자 상관없이 키워드 검색되게 처리하세요..
SELECT email, job_id, e.*
FROM EMPLOYEES e 
WHERE upper(email) LIKE upper('%o%')
AND lower(job_id) LIKE lower('%A%');
/*
SELECT email, job_id, e.*
FROM EMPLOYEES e 
WHERE upper(email) LIKE upper(?)
AND lower(job_id) LIKE lower(?)
 * */
/*
# 문자열 길이 반환
1. length(컬럼/데이터) : 해당 데이터나 컬럼의 문자열 길이를 반환하는 함수
2. lengthb(데이터/컬럼) : 입력되는 문자열의 바이트를 반환하는 함수
	1) 영문은 1자가 1byte
	2) 한글은 1자가 3byte
	
ps) dual : 오라클레서 지원되는 임시가상 테이블로 데이터를 간단하게 확인할 때, 사용한다.	
 * */
SELECT '홍길동' name, lengthb('홍길동') "이름(byte)", length('홍길동') "이름(글자수)"
FROM dual;
SELECT ename, length(ename) "글자수", lengthb(ename) "byte크기"
FROM emp01;
-- ex) emp 테이블에서 사원명과 직책명을 글자수와 함께 표현하되 직책(job)의 글자수가 6이상인 데이터만 출력하셍..
SELECT ename, length(ename) 사원명글자수, job, length(job) 직책명글자수
FROM emp
WHERE length(job) >=6;
/*
# 문자열 추출하여 데이터 조작 처리 함수
1. substring(데이터/컬럼명, 시작위치(0부터), 시작위치로부터 갯수)
	문자열 데이터를 시작위치와 마지막 위치를 기준으로 절삭하여 사용하는 것을 말한다.
	substr('sql*plus', 5, 4)  index로 5 즉 p부터 시작하여 글자수 4자 즉  plus 라는 문자열을 추출해준다.
 **/
SELECT substr('sql*plus',5,4) "추출데이터"
FROM dual;

SELECT empno, ename, substr(ename, 0,3) 이름3,  job, substr(job,1,3) 직책3,
	hiredate, substr(hiredate,0,8) 입사일
FROM emp;









/*

**/




