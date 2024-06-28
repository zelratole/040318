package springweb.a04_mvc.a01_controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	// ex1) call102.do 로 get방식으로 받는 메서드 처리, post방식으로 받는 메서드 처리..
	//      a03_get_post_methodExp.jsp
	// // http://localhost:7080/springweb/call102.do
	@GetMapping("call102.do")
	public String call102Get() {
		System.out.println("call102.do get 방식 ");
		return "WEB-INF\\views\\a05_mvcexp\\a03_get_post_method.jsp";
	}
	@PostMapping("call102.do")
	public String call102Post() {
		System.out.println("call102.do post 방식 ");
		return "WEB-INF\\views\\a05_mvcexp\\a03_get_post_method.jsp";
	}
	// ex2) call103.do로 get/post방식 둘다 받게 처리.. a03_get_post_methodExp.jsp
	// // http://localhost:7080/springweb/call103.do
	@RequestMapping("call103.do")
	public String call103(HttpServletRequest request) {
		System.out.println("call103.do get/post 방식 ");
		System.out.println(request.getMethod());
		return "WEB-INF\\views\\a05_mvcexp\\a03_get_post_method.jsp";
	}
	
	// 단일 요청값 처리  ?key=val

	// http://localhost:7080/springweb/call104.do?name=홍길동
	@GetMapping("call104.do")
	public String call04(@RequestParam("name") String name) {
		
		System.out.println("요청값(이름):"+name);
		
		return "WEB-INF\\views\\a05_mvcexp\\a04_one_request.jsp";
	}
	// ex) http://localhost:7080/springweb/call105.do?prodName=사과
	//      	호출 view a04_one_request.jsp
	@GetMapping("call105.do")
	public String call105(@RequestParam("prodName") String prodName) {
		System.out.println("요청값(물건명):"+prodName);
		return "WEB-INF\\views\\a05_mvcexp\\a04_one_request.jsp";
	}
	// http://localhost:7080/springweb/call106.do?food=짜장면
	@GetMapping("call106.do")
	public String call106(@RequestParam("food") String food) {
		System.out.println("서버에 온 요청값:"+food);
		
		return "WEB-INF\\views\\a05_mvcexp\\a05_one_request.jsp";
	}
	// http://localhost:7080/springweb/call107.do?music=IAM
	@GetMapping("call107.do")
	public String call107(@RequestParam("music") String music) {
		System.out.println("서버에 온 요청값:"+music);
		
		return "WEB-INF\\views\\a05_mvcexp\\a06_one_request.jsp";
	}	
	
	
}
