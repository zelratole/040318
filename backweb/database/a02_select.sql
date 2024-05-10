SELECT * FROM emp;
-- 11:05~
SELECT empno, ename, job, sal -- 열단위로 선택
FROM emp
WHERE sal>=2000; --행단위로 filtering
/*
# 데이터의 산술연산자와 문자열 연결처리
1. 컬럼의 타입이 숫자이면 산술연산자(+,-,*,/)가 처리된다.
2. 컬럼의 타입이 문자열이면 ||를 통해서 연결된다. 문자열로 된 데이터와 || 숫자형도 연결되어 처리된다.
3. 문자열 데이터를 표현하는 방법은 '문자열데이터'로 데이터베이스는 활용한다. 
	주의) "alias에 사용"  : 문자열데이터로 사용하지 못한다.
 * */
SELECT sal, sal*2 급여두배, sal + 10 "급여+10"
FROM emp;
SELECT empno, empno, empno + deptno "컬럼간연산"
FROM emp;
SELECT ename, ename||'님 입니다.', ename||' - '||deptno "문자+숫자"
FROM emp;
-- ex1) 각사원의 이름과 급여, 급여의 3배를 출력하세요.  
SELECT ename 이름, sal 급여, sal*3 "급여의 3배"
FROM emp;
-- ex2) 사원번호, 사원명, 사원명(사원번호) 형식으로 출력하세요.
--  사원명|| (  || 사원번호 ||  )
SELECT empno "사원번호", ename 사원명, 
	  ename||' ( '||empno||' )' "사원명(사원번호)"
FROM emp;	  
--ex) 사원명, 급여, 사원명{급여} 를 출력하세요.
SELECT ename 사원명, sal 급여, ename ||'{'||sal||'}' "사원명{급여}"
FROM emp;
-- ex3) 사원명, 급여, 급여의10%, 급여+급여의10% 합산액을 출력하세요.
SELECT ename 사원명, sal 급여, 
		sal*10/100 "급여의 10%",
		sal + sal*10/100 "급여+급여의 10%"
FROM emp;



