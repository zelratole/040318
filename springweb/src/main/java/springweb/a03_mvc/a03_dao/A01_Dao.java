package springweb.a03_mvc.a03_dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import springweb.z01_vo.Dept;
import springweb.z01_vo.Emp;

public interface A01_Dao {
	
	@Select("SELECT * FROM EMP05 "
			+ "WHERE ename like '%'||#{ename}||'%' " // sch.getEname()
			+ "and job like '%'||#{job}||'%' "
			+ "order by empno ")      //  sch.getJob()
	List<Emp> getEmpList(Emp sch);
	
	@Select("select *\r\n"
			+ "	from emp05\r\n"
			+ "	where empno = #{empno}")
	Emp getEmp(@Param("empno") int empno);
	
	@Insert("INSERT INTO emp05 values(#{empno}, #{ename},#{job},#{mgr}, \r\n"
			+ "	to_date(#{hiredateStr},'YYYY-MM-DD'), #{sal},#{comm},#{deptno})")
	int insertEmp(Emp ins);
	
	@Select("		select count(*) \r\n"
			+ "		from emp05\r\n"
			+ "		where empno = #{empno}")
	int empnoDupck(@Param("empno") int empno);
	
	// 부서정보...
	@Select("SELECT * FROM dept01 "
			+ "WHERE dname like #{dname} "
			+ "AND loc like #{loc} "
			+ "order by deptno ")
	List<Dept> getDeptList(Dept sch);
	
	@Select("select *\r\n"
			+ "from dept01\r\n"
			+ "where deptno = #{deptno}")
	Dept getDept(@Param("deptno") int deptno);
	
	
	@Insert("insert into dept01 values(#{deptno}, #{dname}, #{loc})")
	int insertDept(Dept ins);
	
	
	// @Insert @Update @Delete
	
	
	
	
}
