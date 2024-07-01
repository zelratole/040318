package springweb.a04_mvc.a02_service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springweb.a04_mvc.a03_dao.ProductDAO;
import springweb.a04_mvc.z01_vo.Product2;

@Service
public class ProductService {
	// 서비스 처리..
	@Autowired(required=false)
	private ProductDAO dao;
	
	public List<Product2> getProductsByCategoryList(String pid){
		if(pid==null) pid = "";
		pid = "%"+pid+"%";
		return dao.getProductsByCategoryList(pid);
	}
}

