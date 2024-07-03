package springweb.a03_mvc.a01_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import springweb.a03_mvc.a02_service.A02_EmpService;
import springweb.z01_vo.Emp;


@Controller
public class A02_EmpController {
	@Autowired(required = false)
	private A02_EmpService service;
	
	// http://localhost:7080/springweb/empMyList.do
	@RequestMapping("empMyList.do")
	public String empMyList(Emp sch, Model d) {
		d.addAttribute("empList", service.getEmpList(sch));
		return "WEB-INF\\views\\a02_mvc\\a01_empList.jsp";
	}
	
}
