package springweb.a03_mvc.a03_dao;

import org.apache.ibatis.annotations.Select;

import springweb.z01_vo.Member;

public interface A05_MemberDao {

	@Select("select *\r\n"
			+ "from MEMBER01\r\n"
			+ "where id = #{id}\r\n"
			+ "and pwd = #{pwd}")
	Member login(Member mem);
	
}
