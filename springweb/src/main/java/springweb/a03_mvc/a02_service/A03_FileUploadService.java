package springweb.a03_mvc.a02_service;

import java.io.File;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class A03_FileUploadService {

	@Value("${user.upload}")
	private String path;
	
	public String upload(MultipartFile [] mfs ) {
		String msg = null;		
		try {		
			for(MultipartFile mf:mfs) {
				File upFile = new File(path, mf.getOriginalFilename());
				mf.transferTo(upFile);
			}
			msg = "업로드 성공";
		} catch (IllegalStateException e) {
			System.out.println(e.getMessage());
			msg = "업로드 실패:"+e.getMessage();
		} catch (IOException e) {
			System.out.println(e.getMessage());
			msg = "업로드 실패:"+e.getMessage();
		} catch(Exception e) {
			System.out.println(e.getMessage());
			msg = "업로드 실패:"+e.getMessage();
		}		
		
		return msg;
	}
}
