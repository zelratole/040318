package springweb.a04_mvc.a03_dao;
// 

import java.util.Date;
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
	
	@Select("SELECT hisal\r\n"
			+ "FROM SALGRADE\r\n"
			+ "WHERE grade = 1")
	int getHiSal();
	
	@Select("SELECT sal\r\n"
			+ "FROM emp\r\n"
			+ "WHERE empno = 7521")
	double getSal();
	
	@Select("SELECT loc\r\n"
			+ "FROM dept\r\n"
			+ "WHERE deptno = 10")
	String getLoc();

	// 다중행 단일컬럼
	@Select("SELECT empno\r\n"
			+ "FROM emp\r\n"
			+ "WHERE deptno = 10")
	List<Integer> getEmpnos();	
	@Select("SELECT ename\r\n"
			+ "FROM emp\r\n"
			+ "WHERE sal BETWEEN 1000 AND 3000")
	List<String> getEnames();
	
	@Select("SELECT hiredate\r\n"
			+ "FROM emp\r\n"
			+ "WHERE job = 'SALESMAN'")
	List<Date> getHiredate();

	@Select("SELECT SAL\r\n"
			+ "FROM EMP e \r\n"
			+ "WHERE deptno = 30")
	List<Double> getSals();
	
	@Select("SELECT empno\r\n"
			+ "FROM emp\r\n"
			+ "WHERE comm IS NULL")
	List<Integer> getEmpnos2();
	
	@Select("SELECT ename\r\n"
			+ "FROM emp\r\n"
			+ "WHERE mgr = 7902 ")
	List<String> getEnames2();
	
	
}
