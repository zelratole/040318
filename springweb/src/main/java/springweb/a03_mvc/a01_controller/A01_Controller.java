package springweb.a03_mvc.a01_controller;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import springweb.a03_mvc.a02_service.A01_Service;
import springweb.z01_vo.Dept;
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
	// http://localhost:7080/springweb/emp.do?empno=1000
	@RequestMapping("emp100.do")
	public String emp(@RequestParam("empno") int empno, Model d) {
		d.addAttribute("emp", service.getEmp(empno));
		return "WEB-INF\\views\\a03_mvc\\a05_empDetail.jsp";  // a05_empDetail.jsp
	}
	
	
	// http://localhost:7080/springweb/empInsertForm100.do
	@RequestMapping("empInsertForm100.do")
	public String empInsertForm100() {
		return "WEB-INF\\views\\a03_mvc\\a03_empInsertForm.jsp";
	}
	
	// <form action="empInsert100.do"
	// http://localhost:7080/springweb/empInsert100.do
	@RequestMapping("empInsert100.do")
	public String empInsert100(Emp ins, Model d) {
		d.addAttribute("result", service.insertEmp(ins));
		return "WEB-INF\\views\\a03_mvc\\a03_empInsertForm.jsp";
	}	
	@RequestMapping("empnoDupck.do")
	public String empnoDupck(@RequestParam("empno") int empno, Model d) {
		d.addAttribute("ckDupEmp", service.empnoDupck(empno)); // empnoDupck.do  ckDupEmp
		return "jsonView";
	}
	// http://localhost:7080/springweb/empUpdate100.do
	@RequestMapping("empUpdate100.do")
	public String empUpdate(Emp upt, Model d) {
		
		d.addAttribute("msg", service.updateEmp(upt));
		d.addAttribute("emp", service.getEmp(upt.getEmpno())); // 수정후, 수정된 내용 확인..
		
		return "WEB-INF\\views\\a03_mvc\\a05_empDetail.jsp"; 
	}
	// http://localhost:7080/springweb/empDelete100.do   empUpdate100.do
	@RequestMapping("empDelete100.do")
	public String empDelete(@RequestParam("empno") int empno, Model d) {
		d.addAttribute("msg", service.deleteEmp(empno));
		d.addAttribute("proc", "삭제");
		return "WEB-INF\\views\\a03_mvc\\a05_empDetail.jsp"; 
	}
	
	
	
	
	
	// http://localhost:7080/springweb/deptList101.do
	@RequestMapping("deptList101.do")
	public String deptList101(Dept sch, Model d) {
		
		d.addAttribute("deptList", service.getDeptList(sch));
		return "WEB-INF\\views\\a03_mvc\\a02_deptList.jsp";
	}	
	
	// http://localhost:7080/springweb/dept101.do?deptno=11
	// 요청값 처리/모델처리/view(jsp)호출 WEB-INF\views\a03_mvc\a06_deptDetail.jsp
	@RequestMapping("dept101.do")
	public String getDept(@RequestParam("deptno") int deptno, Model d) {
		d.addAttribute("dept", service.getDept(deptno));
		return "WEB-INF\\views\\a03_mvc\\a06_deptDetail.jsp";
	}
	
	
	
	
	// url 호출 시, url이름, get/post 구분, 요청값.. 
	// Get/Post방식이 다르면 같은 url이라도 호출이 가능 하다.
	// url로 호출 방식 ==> get, <form method="post" ==> post
	// http://localhost:7080/springweb/deptInsert102.do
	@GetMapping("deptInsert102.do")
	public String deptInsertFrm() {
		return "WEB-INF\\views\\a03_mvc\\a04_deptInsert.jsp";
	}
	// <form method="post" > : form에 동일한 action으로 jsp 호출되었기 때문에 굳이 선언하지 않아도.. 
	@PostMapping("deptInsert102.do")
	public String deptInsert(Dept ins, Model d) {
		d.addAttribute("result", service.insertDept(ins));
		return "WEB-INF\\views\\a03_mvc\\a04_deptInsert.jsp";
	}	
	@RequestMapping("deptUpdate102.do")
	public String deptUpdate102(Dept upt, Model d) {
		d.addAttribute("msg", service.updateDept(upt)); // 수정 메시지 처리
		d.addAttribute("dept", service.getDept(upt.getDeptno())); // 수정 이후, 수정된 데이터 출력
		
		return "WEB-INF\\views\\a03_mvc\\a06_deptDetail.jsp";
	}
	@RequestMapping("deptDelete102.do") // deptUpdate102.do deptDelete102.do
	public String deptDelete102(@RequestParam("deptno") int deptno , Model d) {
		d.addAttribute("msg", service.deleteDept(deptno)); // 수정 메시지 처리
		d.addAttribute("proc", "삭제"); 
		return "WEB-INF\\views\\a03_mvc\\a06_deptDetail.jsp";
	}	
	
	
	
}
