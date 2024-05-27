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


--결과: deptno(int), dname(String), loc(String)
--입력 : deptno(int)
/*
SELECT *
FROM dept
WHERE deptno = ?

class Dept01{
	private int deptno;
	private String dname;
	private String loc;
	// 생성자, set/get메서드처리..
}
public Dept01 getDept(int deptno){
	Dept01 d=null;
	String sql = " ";
	
	return d;
}
 * */
--------------------------
-- ex2) salgrade 등급, 최소급여, 최대급여(출력)  
--    등급의 grade를 조건으로 등급을 처리하는 dao 메서드를 추가하세요
SELECT *
FROM salgrade
WHERE grade = 1
;
/*
결과 : grade(int), losal(int), hisal(int)
입력 : grade(int)

class Salgrade01{
	private int grade;
	private int losal;
	private int hisal;
	생성자
	set/getXXXX
}
SELECT *
FROM salgrade
WHERE grade = ?
public Salgrade01 getSalgrade(int grade){
	Salgrade01 salOb = null;
	String sql = " ";
	return salOb;
}
 * */
-- ex) 부서정보(dept)에서 부서번호, 부서명, 부서위치를
--     부서명을 keyword : dname like '%A%'
--     로 sql, VO를 만들고, 기능메서드를 처리해보세요..
SELECT *
FROM dept
WHERE dname LIKE '%A%';
/*
출력 : deptno(int), dname(String), loc(String)
입력 : dname(String)

class Dept01{
	private int deptno;
	private String dname;
	private String loc;
	..
	..
}
SELECT *
FROM dept
WHERE dname LIKE ?

public List<Dept01> getDeptList01(String dname){
	List<Dept01> dlist = new ArrayList<Dept01>();
	String sql = "";
	
	return dlist;
}





 * */
SELECT *
FROM emp;
-- ex) 직책(job)으로 사원번호, 사원명, 직책, 입사일, 급여를 출력하게 하세요(다중행 처리)
--     job = ?
SELECT empno, ename, job, hiredate, sal
FROM emp
WHERE job = 'SALESMAN';
/*
출력 : empno(int), ename(String), job(String), hiredate(Date), sal(double)
class Emp03{
	private int empno;
	pirvate String ename;
	private String job;
	private Date hiredate;
	private double sal;
	
}
SELECT empno, ename, job, hiredate, sal
FROM emp
WHERE job = ?

public List<Emp03> getEmpList02(String job){
	List<Emp03> empList = new ArrayList<Emp03>();
	String sql = "";
	
	return empList;
}

 * */

-- sql ==> vo ==> 기능메서드 ==> 메서드안에 처리 부분 ==> main()호츨
SELECT *
FROM dept
WHERE dname LIKE '%C%';
--ex) A01ExpDao.java 출력/입력 ==> VO ==> 기능메서드 선언 ==> 단일 조회 데이터 처리 ==> main()
/*
SELECT *
FROM dept
WHERE dname LIKE ?

--ex) 

아래 sql을 통해 출력/입력 기준으로 VO를 만들어서 다중 데이터를 처리하는 기능메서드를 처리하세요..
 * */
SELECT * FROM emp;
SELECT *
FROM emp
WHERE ename LIKE '%A%'
AND job LIKE '%A%';
/*
SELECT * FROM emp;
SELECT *
FROM emp
WHERE ename LIKE ?
AND job LIKE ?
 * */


