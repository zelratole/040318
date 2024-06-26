package springweb.a04_mvc.a03_dao;
// 

import org.apache.ibatis.annotations.Select;

public interface A01_ExpDao {
	// 단일 데이터 가져오는 sql
	@Select("select count(*) from emp")
	int getCount();
}
