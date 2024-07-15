package springweb.a03_mvc.a01_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.LocaleResolver;

@Controller
public class A06_MultiLanController {
	
	@Autowired
	private LocaleResolver localeResolver;
	
	// http://localhost:7080/springweb/multi.do
	@RequestMapping("multi.do")
	public String multi() {
		return "WEB-INF\\views\\a03_mvc\\a10_multilingual.jsp";
	}
	
}
