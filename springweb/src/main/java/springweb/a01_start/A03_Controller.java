package springweb.a01_start;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//springweb.a01_start.A03_Controller
@Controller
public class A03_Controller {
//	http://localhost:7080/springweb/third.do
//  webapp/a03_third.jsp
	@RequestMapping("third.do")
	public String third() {
		return "a03_third.jsp";
	}
}
