package springweb.a04_mvc.a01_controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import springweb.a04_mvc.z01_vo.Product2;

@Controller
public class ProductController {

	// http://localhost:7080/springweb/products.do
	@RequestMapping("products.do")
	public String products(Product2 sch, Model d) {
		
		return "WEB-INF\\views\\a05_mvcexp\\a12_productList.jsp";
	}
}
