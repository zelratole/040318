package a01_diexp.z06_mvc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class A01_Controller {
	@Autowired
	private A02_Service service;
	
	// 요청처리 : url + 요청key/val
	@RequestMapping("/empList.do")
	public String  getEmpList(String sch, Model d) { // String sch : 요청값 처리
		System.out.println("# controller 호출 #");
		//d.addAttribute("empList", service.getList(sch)); // Model d를 통해 모델 데이터 처리..
		System.out.println("서비스단 호출:"+service.getList(sch));
		return "jsp View 호출/json view 호출";//view단호출..
	}
	
	
}
