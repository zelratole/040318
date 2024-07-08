package springweb.a02_mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class A05_AjaxController {
	// http://localhost:7080/springweb/ajax01.do
	@GetMapping("ajax01.do")
	public String ajax01() {
		return "WEB-INF\\views\\a03_ajax\\a02_ajaxForform.jsp";
	}
	//
	@GetMapping("data01.do")
	public String data01(Model d) {
		d.addAttribute("data", new Person("홍길동",25,"수원"));
		return "jsonView";
	}
	
}
