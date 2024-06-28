package springweb.a04_mvc.a01_controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class A02_RequestController {
	// http://localhost:7080/springweb/call100.do
	// get방식을 받기
	@GetMapping("call100.do")
	public String call100() {
		System.out.println("## get방식으로 받은 call100.do");
		return "WEB-INF\\views\\a05_mvcexp\\a02_get_post_method.jsp";
	}
	// post방식으로 받기 : url로 절대 받을 수 없음 
	// form method="post"로만 받을 수 있다..
	@PostMapping("call100.do")
	public String call100Post() {
		System.out.println("## post방식으로 받은 call100.do");
		return "WEB-INF\\views\\a05_mvcexp\\a02_get_post_method.jsp";
	}
	// http://localhost:7080/springweb/call101.do
	// get/post둘다 받기..
	@RequestMapping("call101.do")
	public String call101(HttpServletRequest request) {
		System.out.println("## get/post방식으로 받은 call101.do");
		System.out.println("현재 요청된 방식:"+request.getMethod());
		return "WEB-INF\\views\\a05_mvcexp\\a02_get_post_method.jsp";
	}
	
}
