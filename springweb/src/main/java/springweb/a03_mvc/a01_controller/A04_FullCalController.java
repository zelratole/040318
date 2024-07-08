package springweb.a03_mvc.a01_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import springweb.a03_mvc.a02_service.A04_CalendarService;

@Controller
public class A04_FullCalController {
	@Autowired(required = false)
	private A04_CalendarService service;
	// cmd 창..
	// 
	// http://localhost:7080/springweb/calendar.do
	@GetMapping("calendar.do")
	public String calendar() {
		return "WEB-INF\\views\\a03_mvc\\a07_fullcalendar.jsp";
	}
	// http://localhost:7080/springweb/callList.do
	@GetMapping("callList.do")
	public String callList(Model d) {
		d.addAttribute("calList", service.getFullCalendarList());
		return "jsonView";
	}
}
