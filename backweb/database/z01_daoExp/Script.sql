-- 
SELECT *
FROM emp;
--  ex) sql 문제, 출력:  입력: ==> VO ==> backweb.vo2 패키지에 할당.
-- ex1) 사원번호, 사원명, 직책명, 급여를 사원번호에 의해 검색 처리..
-- 1단계) sql 문제, 출력:  입력:
--------------------------
SELECT empno, ename, job, sal, hiredate
FROM emp
WHERE empno = 7369;
-- emp ctrl누른 후, 컬럼별 데이터 유형을 확인해서
-- number(크기,0) : 정수형 int
-- number(크기,2) : 실수형, 0이상  double
-- char(), varchar() : 문자열형 String
-- date : 날짜 유형 Date

-- 출력 empno(int), ename(String), job(String), sal(double), hiredate(Date)
-- 입력 empno(int)
-- 2단계) 위 내용 바탕을 Emp01
/*
class Emp01{
	private int empno;
	private String ename;
	private String job;
	private double sal;
	private Date hiredate;
	// 생성자
	// set/get메서드..
}
 * 
 * */


