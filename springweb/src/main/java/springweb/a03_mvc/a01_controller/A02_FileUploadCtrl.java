package springweb.a03_mvc.a01_controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import springweb.a03_mvc.a02_service.A02_FileUploadService;

@Controller
public class A02_FileUploadCtrl {
	
	@Autowired(required = false)
	private A02_FileUploadService service;

	// http://localhost:7080/springweb/downLoad.do?fname=a01_spring.txt  
	// http://192.168.0.17:7080/springweb/downLoad.do?fname=a01_spring.txt  
	// 호출시 특정 파일을 다운로드 처리..
	@GetMapping("downLoad.do")
	public String downLoad(@RequestParam("fname") String fname, Model d) {
		d.addAttribute("downloadFile", fname);
		return "downloadView";// downloadView downloadFile
	}
	
	// http://192.168.0.17:7080/springweb/upLoadList.do
	// http://localhost:7080/springweb/upLoadList.do
	@GetMapping("upLoadList.do")
	public String upLoadList(Model d) {
		d.addAttribute("flist", service.getFileList());
		return "WEB-INF\\views\\a04_fileUpload\\a03_fileList.jsp";
	}
	
	
	
	
	// http://localhost:7080/springweb/uploadExp01.do
	@GetMapping("uploadExp01.do")
	public String uploadExp01() {
		return "WEB-INF\\views\\a04_fileUpload\\a01_upload.jsp";
	}
	@PostMapping("uploadExp01.do")
	public String uploadExp01Post( @RequestParam("report") MultipartFile mf, Model d ) {
		System.out.println("서버에 온 mutipart파일:"+mf.getOriginalFilename());
		d.addAttribute("msg", service.upload01(mf));
		
		return "WEB-INF\\views\\a04_fileUpload\\a01_upload.jsp";
	}
	// ex) A03_FileUploadCtrl.java
	//     	a04_fileUpload\a02_upload.jsp]
	//      업로드 파일 올리고 처리
	
	
	
	
}
