package springweb.a04_mvc.a01_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import springweb.a04_mvc.a02_service.ProductService;
import springweb.a04_mvc.z01_vo.Product2;

@Controller
public class ProductController {
	
	@Autowired(required = false)
	private ProductService service;

	// http://localhost:7080/springweb/products.do
	@RequestMapping("products.do")
	public String products(@RequestParam(value="pid", defaultValue = "") String pid, Model d) {
		d.addAttribute("plist", service.getProductsByCategoryList(pid));
		
		return "WEB-INF\\views\\a05_mvcexp\\a12_productList.jsp";
	}
}
