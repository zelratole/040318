package springweb.a02_mvc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

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
	@GetMapping("empListAjaxFrm.do")
	public String empListAjaxFrm() {
		return "WEB-INF\\views\\a03_ajax\\a01_empList.jsp";
	}
	// http://localhost:7080/springweb/empListData.do
	@RequestMapping("empListData.do")
	@ResponseBody
	public String empListData(Emp sch, Model d) {
		Gson g = new Gson();
		return g.toJson(service.getEmpList(sch));
	}	
	// http://localhost:7080/springweb/empListData2.do
	@RequestMapping("empListData2.do")
	public String empListData2(Emp sch, Model d) {

		d.addAttribute("empList", service.getEmpList(sch));
		// view 화면호출..
		return "jsonView";
	}
	// empInsert.do
	@RequestMapping("empInsert.do")
	public String empInsert(Emp ins, Model d) {
		d.addAttribute("result",service.insertEmp(ins));
		return "jsonView";
	}
	// 요청값으로 json 하나데이터를 가져오는 처리..
	// http://localhost:7080/springweb/getEmp.do?empno=1001
	@GetMapping("getEmp.do")
	public String getEmp(@RequestParam("empno") int empno, Model d) {
		d.addAttribute("emp", service.getEmp(empno));
		return "jsonView";
	}
	// http://localhost:7080/springweb/updateEmp.do
	@GetMapping("updateEmp.do")
	public String updateEmp(Emp upt, Model d) {
		d.addAttribute("result",service.updateEmp(upt));
		d.addAttribute("emp", service.getEmp(upt.getEmpno()));// 수정후, 다시 조회된 결과..
		return "jsonView";
	}
	// http://localhost:7080/springweb/deleteEmp.do?empno=1001
	@GetMapping("deleteEmp.do")
	public String deleteEmp(@RequestParam("empno") int empno, Model d) {
		d.addAttribute("result",service.deleteEmp(empno));
		return "jsonView";
	}
	
}
