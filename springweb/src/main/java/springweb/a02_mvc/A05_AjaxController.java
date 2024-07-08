package springweb.a02_mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import springweb.z01_vo.Person;

@Controller
public class A05_AjaxController {
	// http://localhost:7080/springweb/ajax01.do
	@GetMapping("ajax01.do")
	public String ajax01() {
		return "WEB-INF\\views\\a03_ajax\\a02_ajaxForform.jsp";
	}
	// http://localhost:7080/springweb/data01.do
	@GetMapping("data01.do")
	public String data01(Model d) {
		// 모델명 data, 객체을 Person로 설정..
		d.addAttribute("data", new Person("홍길동",25,"수원"));
		return "jsonView";
		// json view에 의해 json형식 데이터 처리 
		// {"data":{"name":"홍길동","age":25,"loc":"수원"}}
	}
	
}
