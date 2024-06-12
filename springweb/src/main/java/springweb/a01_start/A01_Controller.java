package springweb.a01_start;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
	
}
// A02_Controller.java
// http://localhost:7080/springweb/second.do
// webapp 하위에 a02_second.jsp 를 호출 하여 출력되게 하세요..
