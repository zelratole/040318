package springweb.a03_mvc.a01_controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class A04_FullCalController {
	// cmd 창..
	// 
	// http://localhost:7080/springweb/calendar.do
	@GetMapping("calendar.do")
	public String calendar() {
		return "";
	}
}
