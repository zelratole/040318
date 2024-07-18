package springweb.a02_mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import springweb.z01_vo.MailVo;

@Controller
public class A07_MailController {
	// http://localhost:7080/springweb/mail.do
	@GetMapping("mail.do")
	public String mailForm() {
		return "WEB-INF\\views\\a02_mvc\\a03_mailForm.jsp";
	}
	@PostMapping("mail.do")
	public String sendMail(MailVo mail, Model d) {
		
		d.addAttribute("msg", "메일발송성공");
		return "WEB-INF\\views\\a02_mvc\\a03_mailForm.jsp";
	}
	

}
