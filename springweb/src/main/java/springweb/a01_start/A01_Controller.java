package springweb.a01_start;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

// springweb.a01_start.A01_Controller
@Controller
public class A01_Controller {
	// http://localhost:7080/springweb/start.do
	@RequestMapping("start.do")
	public String start() {
		return "a01_start.jsp";
	}
	// http://localhost:7080/springweb/request.do
	@RequestMapping("request.do")
	public String request() {
		return "WEB-INF\\views\\a01_form\\a01_requestData.jsp";
	}
	// request2.do?name=홍길동&age=25&loc=서울
	@RequestMapping("request2.do")
	public String request2(@RequestParam("name") String name, 
						   @RequestParam("age") int age,
						   @RequestParam("loc") String loc
						   ) {
		System.out.println("요청값 이름:"+name);
		System.out.println("요청값 나이:"+age);
		System.out.println("요청값 사는곳:"+loc);
		return "WEB-INF\\views\\a01_form\\a01_requestData.jsp";
	}	
}
// A02_Controller.java
// http://localhost:7080/springweb/second.do
// webapp 하위에 a02_second.jsp 를 호출 하여 출력되게 하세요..
