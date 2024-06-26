package springweb.a04_mvc.a03_dao;
// 

import java.util.List;

import org.apache.ibatis.annotations.Select;

public interface A01_ExpDao {
	// 단일 데이터 가져오는 sql
	@Select("select count(*) from emp")
	int getCount();
	
	@Select("SELECT job \r\n"
			+ "FROM emp\r\n"
			+ "WHERE empno = 7499\r\n")
	String getJob();
/* sql ==> dao ==> service  public void daoExp01() 호출하여 해당 결과 확인..
--1) 부서정보 갯수 sql 
--------------------------------------
--2) 사원번호 7499의 job sql
--3) 등급테이블(salgrade)의 등급 1의 hisal 
--4) empno 7521의 sal 호출
--5) deptno 10의 loc 호출
 
 */	
	// 다중행 단일컬럼
	@Select("SELECT empno\r\n"
			+ "FROM emp\r\n"
			+ "WHERE deptno = 10")
	List<Integer> getEmpnos();
/*
# 결과값 단일컬럼 여러행(연습문제)
1. 급여가 1000~3000 사이의 사원명
2. 직책이 SALESMAN인 사원의 입사일
3. 부서번호가 30인 사원의 급여
4. 보너스가 NULL인 사원번호
5. 관리자 번호가 7902인 사원의 사원명

 * */	
	
	
}
