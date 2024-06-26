package springweb.a04_mvc.a01_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import springweb.a04_mvc.a02_service.A01_ExpService;

@Controller
public class A01_ExpController {

	@Autowired(required=false)
	private A01_ExpService service;
	
	// http://localhost:7080/springweb/mvc_exp01.do
	@GetMapping("mvc_exp01.do")
	public String mvc_exp01() {
		service.daoExp01();
		return "";
	}
	
}
