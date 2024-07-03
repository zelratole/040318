package springweb.a03_mvc.a01_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import springweb.a03_mvc.a02_service.A03_DeptService;
import springweb.z01_vo.Dept;

@Controller
public class A03_DeptController {
	@Autowired(required = false)
	private A03_DeptService service;
	
	// http://localhost:7080/springweb/deptMyList.do
	@RequestMapping("deptMyList.do")
	public String deptMyList(Dept sch, Model d) {
		d.addAttribute("deptList", service.getDeptList(sch));
		return "WEB-INF\\views\\a03_mvc\\a02_deptList.jsp";
	}
}





