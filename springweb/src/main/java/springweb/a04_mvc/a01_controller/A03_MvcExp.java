package springweb.a04_mvc.a01_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import springweb.a04_mvc.a02_service.A01_ExpService;
import springweb.a04_mvc.z01_vo.Member;

@Controller
public class A03_MvcExp {

	@Autowired(required = false)
	private A01_ExpService service;
	
	// a11_memberList.jsp 초기화면 로딩 처리..
	// http://localhost:7080/springweb/member114.do
	@RequestMapping("member114.do")
	public String member114(Member sch, Model d) {
		d.addAttribute("memberList", service.memberList(sch));
		return "WEB-INF\\views\\a05_mvcexp\\a11_memberList.jsp";
	}
	
	
	
}
