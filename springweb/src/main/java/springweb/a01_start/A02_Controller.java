package springweb.a01_start;

import org.springframework.stereotype.Controller;
// springweb.a01_start.A02_Controller
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class A02_Controller {
	//  http://localhost:7080/springweb/second.do
	@RequestMapping("second.do")
	public String second() {
		return "a02_second.jsp";
	}
	
}
// ex) A03_Controller.java
//		http://localhost:7080/springweb/third.do
//     webapp/a03_third.jsp

