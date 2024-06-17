package springweb.a02_mvc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

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
	// get방식으로 초기 화면 호출..
	// http://localhost:7080/springweb/empListAjaxFrm.do
	@RequestMapping("empListAjaxFrm.do")
	public String empListAjaxFrm() {
		return "WEB-INF\\views\\a03_ajax\\a01_empList.jsp";
	}
	// http://localhost:7080/springweb/empListData.do
	@RequestMapping("empListData.do")
	@ResponseBody
	public String empListData(Emp sch, Model d) {
		Gson g = new GsonBuilder().setPrettyPrinting().create();
		return g.toJson(service.getEmpList(sch));
	}	
	// http://localhost:7080/springweb/empListData2.do
	@RequestMapping("empListData2.do")
	public String empListData2(Emp sch, Model d) {

		d.addAttribute("empList", service.getEmpList(sch));
		System.out.println(service.getEmpList(sch).size());
		// view 화면호출..
		return "jsonView";
	}
	
	
}
