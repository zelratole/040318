package springweb.a04_mvc.a03_dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import springweb.a04_mvc.z01_vo.Product2;

public interface ProductDAO {

	@Select("SELECT *\r\n"
			+ "FROM product01\r\n"
			+ "WHERE pid LIKE #{pid}")
	List<Product2> getProductsByCategoryList(@Param("pid") String pid);
}
