package springweb.a03_mvc.a03_dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

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
	
	@Update("UPDATE EMP05 \r\n"
			+ "	SET ename = #{ename},\r\n"
			+ "		job=#{job},\r\n"
			+ "		mgr = #{mgr},\r\n"
			+ "		hiredate = to_date(#{hiredateStr},'YYYY-MM-DD'),\r\n"
			+ "		sal = #{sal},\r\n"
			+ "		comm = #{comm},\r\n"
			+ "		deptno = #{deptno}\r\n"
			+ "	WHERE empno = #{empno}")
	int updateEmp(Emp upt);
	
	@Delete("DELETE \r\n"
			+ "FROM emp05\r\n"
			+ "WHERE empno = #{empno}")
	int deleteEmp(@Param("empno") int empno);

/*
UPDATE EMP05 
	SET ename = #{ename},
		job=#{job},
		mgr = #{mgr},
		hiredate = to_date(#{hiredateStr},'YYYY-MM-DD'),
		sal = #{sal},
		comm = #{comm},
		deptno = #{deptno}
	WHERE empno = #{empno}

DELETE 
FROM emp05
WHERE empno = #{empno}		
 * */	
	
	
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
	
	
	@Update("UPDATE dept01\r\n"
			+ "   SET dname=#{dname},\r\n"
			+ "       loc=#{loc}\r\n"
			+ " WHERE deptno = #{deptno} ")
	int updateDept(Dept upt);
	
	@Delete("DELETE\r\n"
			+ "FROM dept01\r\n"
			+ "WHERE deptno = #{deptno} ")
	int deleteDept(@Param("deptno") int deptno );
	
/*
	int updateDept(Dept upt);
	int deleteDept(@Param("deptno") int deptno );
UPDATE dept01
   SET dname=#{dname},
       loc=#{loc}
 WHERE deptno = #{deptno}
 
DELETE
FROM dept01
WHERE deptno = #{deptno} 

*/	
	
	// @Insert @Update @Delete
	
	
	
	
}
