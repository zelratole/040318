package springweb.a04_mvc.a03_dao;
// 

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import springweb.a04_mvc.z01_vo.Dept01;
import springweb.a04_mvc.z01_vo.Emp01;
import springweb.a04_mvc.z01_vo.Emp02;
import springweb.a04_mvc.z01_vo.EmpDept;
import springweb.a04_mvc.z01_vo.Emp_Dept01;
import springweb.a04_mvc.z01_vo.Employee01;

public interface A01_ExpDao {
	// 단일 데이터 가져오는 sql
	@Select("select count(*) from emp")
	int getCount();
	
	@Select("SELECT job \r\n"
			+ "FROM emp\r\n"
			+ "WHERE empno = 7499\r\n")
	String getJob();
	@Select("SELECT job \r\n"
			+ "FROM emp\r\n"
			+ "WHERE empno = #{empno}\r\n")
	String getJob(@Param("empno") int empno);	
	
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
	// 1행의 여러 데이터 처리 : 
	// sql의 결과가 한 행이고, 여러 컬럼으로 가져올 때 처리
	@Select("SELECT ename, sal, deptno\r\n"
			+ "FROM emp\r\n"
			+ "WHERE empno = 7369")
	Emp02 getEmp02();
	
	@Select("SELECT ename, job, sal\r\n"
			+ "FROM emp\r\n"
			+ "WHERE empno = 7369")
	Emp01 getEmp01();
	
	@Select("SELECT dname, loc\r\n"
			+ "FROM dept\r\n"
			+ "WHERE deptno = 20")
	Dept01 getDept01();
	@Select("SELECT empno, ename, dname, loc\r\n"
			+ "FROM emp e, dept d\r\n"
			+ "WHERE e.deptno = d.deptno\r\n"
			+ "AND ename = 'ALLEN'")
	Emp_Dept01 getEmpDept();
	
	@Select("SELECT EMPLOYEE_ID, FIRST_NAME, SALARY, DEPARTMENT_ID \r\n"
			+ "FROM EMPLOYEES\r\n"
			+ "WHERE SALARY  BETWEEN 10000 AND 20000")
	List<Employee01> getEmployeeList();
	
	@Select("SELECT ename, job, sal\r\n"
			+ "FROM emp\r\n"
			+ "WHERE deptno = 10")
	List<EmpDept> get_01_enamejobsal();
	@Select("SELECT ename, hiredate, deptno\r\n"
			+ "FROM emp\r\n"
			+ "WHERE job = 'CLERK'")
	List<EmpDept> get_02_enamehiredatedeptno();
	@Select("SELECT dname, ename\r\n"
			+ "FROM emp e, dept d\r\n"
			+ "WHERE e.deptno = d.deptno\r\n"
			+ "ORDER BY dname")
	List<EmpDept> get_03_dnameename();
	@Select("SELECT ename, job, dname\r\n"
			+ "FROM emp e, dept d\r\n"
			+ "WHERE e.deptno = d.deptno\r\n"
			+ "AND sal >= 2000")
	List<EmpDept> get_04_enamejobdname();

	@Select("SELECT ename, sal, comm\r\n"
			+ "FROM emp\r\n"
			+ "WHERE deptno = 30")
	List<EmpDept> get_05_enamesalcomm();
	
	
	
	
	
	
}
