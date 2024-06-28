package springweb.a04_mvc.a03_dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import springweb.a04_mvc.z01_vo.Dept;

public interface A02_ExpDao {
	/*
	# dao 선언시, 중복정의(overloading)으로 메서드는 선언할 수 있으나,
	mybatis 프레임웍내부적으로 식별하는 기준이 메서드명이므로 다르게 선언하여야 
	한다. (주의-에러발생)	
	 * */
	// ex1) grade 매개변수로 입력처리..(#)
	@Select("SELECT hisal\r\n"
			+ "FROM SALGRADE\r\n"
			+ "WHERE grade = 1 ")
	int getHiSal1();
	
	
	@Select("SELECT hisal\r\n"
			+ "FROM SALGRADE\r\n"
			+ "WHERE grade = #{grade}")
	int getHiSal(@Param("grade") int grade);
	
	// ex1)
	@Select("SELECT empno\r\n"
			+ "FROM emp\r\n"
			+ "WHERE deptno = #{deptno01} ")
	List<Integer> getEmpnos(@Param("deptno01") int deptno);
	// ex2)
	@Select("SELECT ename\r\n"
			+ "FROM emp\r\n"
			+ "WHERE sal BETWEEN #{start1} AND #{end1} ")
	List<String> getEnames(@Param("start1") int start1, 
						   @Param("end1") int end1 );
	/*
	@Insert("INSERT INTO dept01 values(#{deptno},#{dname},#{loc})")
	int insertDept01(@Param("deptno") int deptno,
	                 @Param("dname") String dname,
	                 @Param("loc") String loc);
	*/
	@Insert("INSERT INTO dept01 values(#{deptno},#{dname},#{loc})")                                  
	int insertDept01(Dept ins);     	
	
}




