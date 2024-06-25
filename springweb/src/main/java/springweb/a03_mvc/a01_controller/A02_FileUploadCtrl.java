package springweb.a03_mvc.a01_controller;

import javax.mail.Multipart;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class A02_FileUploadCtrl {
	// http://localhost:7080/springweb/uploadExp01.do
	@GetMapping("uploadExp01.do")
	public String uploadExp01() {
		return "WEB-INF\\views\\a04_fileUpload\\a01_upload.jsp";
	}
	@PostMapping("uploadExp01.do")
	public String uploadExp01Post( @RequestParam("report") MultipartFile mf ) {
		System.out.println("서버에 온 mutipart파일:"+mf.getOriginalFilename());
		
		return "WEB-INF\\views\\a04_fileUpload\\a01_upload.jsp";
	}
}
