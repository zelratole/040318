package springweb.a03_mvc.a03_dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import springweb.z01_vo.Dept;
import springweb.z01_vo.Emp;

public interface A01_Dao {
	
	@Select("SELECT * FROM EMP05 "
			+ "WHERE ename like '%'||#{ename}||'%' " // sch.getEname()
			+ "and job like '%'||#{job}||'%' ")      //  sch.getJob()
	List<Emp> getEmpList(Emp sch);
	// 부서정보...
	@Select("SELECT * FROM dept01 "
			+ "WHERE dname like #{dname} "
			+ "AND loc like #{loc} ")
	List<Dept> getDeptList(Dept sch);
	// @Insert @Update @Delete
	
	
	
	
}
