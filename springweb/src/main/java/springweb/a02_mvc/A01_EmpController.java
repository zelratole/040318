package springweb.a02_mvc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

//springweb.a02_mvc.A01_EmpController
//springweb.a02_mvc.A04_EmpDao
//springweb.a02_mvc.A02_EmpService
@Controller
public class A01_EmpController {
	@Autowired
	private A02_EmpService service;
	
	// http://localhost:7080/springweb/pre_empList.do
	@RequestMapping("pre_empList.do")
	public String empList(Emp sch, Model d) {
		//service = new A04_EmpDao();
		// 요청값 처리
		// Emp sch : useBean과 동일하게 요청값을 객체 할당..
		
		// 모델데이터 설정
		d.addAttribute("empList", service.getEmpList(sch));
		System.out.println(service.getEmpList(sch).size());
		// view 화면호출..
		return "WEB-INF\\views\\a02_mvc\\a01_empList.jsp";
	}

	
	// WEB-INF\views\a02_mvc\a01_empList.jsp
}
