package springweb.a02_mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class A06_FullCalController {
	// http://localhost:7080/springweb/calendar2.do
	@GetMapping("calendar2.do")
	public String calendar2() {
		return "WEB-INF\\views\\a02_mvc\\a02_fullcalendar.jsp";
	}
}
