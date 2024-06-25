package springweb.a03_mvc.a01_controller;

import javax.mail.Multipart;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class A03_FileUploadCtrl {

	@GetMapping("uploadexp02.do")
	public String uploadexp02() {
		return "WEB-INF\\views\\a04_fileUpload\\a02_upload.jsp";
	}
	@PostMapping("uploadexp02.do")
	public String uploadexp022(@RequestParam("report") MultipartFile[] reports) {
		System.out.println("#다중 파일 업로드#");
		for(MultipartFile mf:reports ) {
			System.out.println(mf.getOriginalFilename());
		}
		
		return "WEB-INF\\views\\a04_fileUpload\\a02_upload.jsp";
	}
}
