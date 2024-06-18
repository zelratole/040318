package springweb.a03_mvc.a03_dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import springweb.z01_vo.Emp;

public interface A01_Dao {
	
	@Select("SELECT * FROM EMP "
			+ "WHERE ename like '%'||#{ename}||'%' " // sch.getEname()
			+ "and job like '%'||#{job}||'%' ")      //  sch.getJob()
	List<Emp> getEmpList(Emp sch);
}
