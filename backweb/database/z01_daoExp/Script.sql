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

SELECT empno, ename, job, sal, hiredate
FROM emp
WHERE empno = ?


-- 출력 empno(int), ename(String), job(String), sal(double), hiredate(Date)
-- 입력 empno(int)
-- 2단계) 위 내용 바탕을 Emp01
public Emp01 getEmp01(int empno){
	Emp01 emp = null;
	RETURN emp;
}

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
 
ex)    
 * */
SELECT * FROM emp;
-- emp ctrl누른 후, 컬럼별 데이터 유형을 확인해서
-- number(크기,0) : 정수형 int
-- number(크기,2) : 실수형, 0이상  double
-- char(), varchar() : 문자열형 String
-- date : 날짜 유형 Date

-- ex) 사원명(ename), 직책명(job), 관리자번호(mgr), 입사일(hiredate)을  
--     부서번호(deptno)로 검색하세요..
--     Emp02.java 만들기.
SELECT ename, job, mgr, hiredate
FROM emp
WHERE deptno = 10;
/*
SELECT ename, job, mgr, hiredate
FROM emp
WHERE deptno = ? 
행이 여러개일 때 선언방법.. 
public List<Emp02> getEmpList(int deptno){
	List<Emp02> empList = new ArrayList<Emp02>();
	String sql = "SELECT ename, job, mgr, hiredate
					FROM emp
					WHERE deptno = ?  ";
	
	return empList;
}
 * 
 * */
-- ex1) sql ==> vo ==> 메서드
--   아래 sql을 이용해서 dao 메서드 추가
SELECT *
FROM dept
WHERE deptno = 10;
-- ex2) salgrade 등급의 grade를 조건으로 등급을 처리하는 dao 메서드를 추가하세요











