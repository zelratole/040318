package springweb.a03_mvc.a01_controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.LocaleResolver;

@Controller
public class A06_MultiLanController {
	
	@Autowired
	private LocaleResolver localeResolver;
	
	// http://localhost:7080/springweb/multi.do
	@RequestMapping("multi.do")
	public String multi(@RequestParam(value="lang", defaultValue = "ko") 
	  					String lang,
						HttpServletRequest request,
						HttpServletResponse reponse
						) {
		System.out.println("선택한 언어:"+lang);
		localeResolver.setLocale(request, reponse, new Locale(lang));
		return "WEB-INF\\views\\a03_mvc\\a10_multilingual.jsp";
	}
	
}
