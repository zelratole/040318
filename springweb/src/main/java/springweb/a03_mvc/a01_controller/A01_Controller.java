package springweb.a03_mvc.a01_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import springweb.a03_mvc.a02_service.A01_Service;
import springweb.z01_vo.Emp;

@Controller("ctrl01")
public class A01_Controller {
	@Autowired(required=false)
	private A01_Service service;
	
	// http://localhost:7080/springweb/empList100.do
	@RequestMapping("empList100.do")
	public String empList(Emp sch, Model d) {
		
		d.addAttribute("empList", service.getEmpList(sch));
		return "WEB-INF\\views\\a03_mvc\\a01_empList.jsp";
	}
	
}
