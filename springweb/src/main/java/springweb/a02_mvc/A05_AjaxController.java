package springweb.a02_mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	// http://localhost:7080/springweb/data02.do
	@GetMapping("data02.do")
	public String data02(@RequestParam("name") String name, Model d) {
		d.addAttribute("person", new Person(name,25,"수원"));
		return "jsonView";
		// json view에 의해 json형식 데이터 처리 
		// {"person":{"name":"홍길동","age":25,"loc":"수원"}}
	}	
	@GetMapping("data03.do")
	public String data03(Person p01, Model d) {
		p01.setAge(27);
		p01.setLoc("서울");
		return "jsonView";
		// Person p01 : 모델 어트리뷰트 개념으로 요청값 처리 + 모델 데이터 처리. Person ==> person
		// json view에 의해 json형식 데이터 처리 
		// {"person":{"name":"홍길동","age":25,"loc":"수원"}}
	}	
	
	
	
}
