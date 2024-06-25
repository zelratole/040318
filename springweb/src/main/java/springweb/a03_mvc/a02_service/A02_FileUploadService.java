package springweb.a03_mvc.a02_service;

import java.io.File;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class A02_FileUploadService {	
	// 공통으로 저장된 경로를 가져온다.
	@Value("${user.upload}")
	private String path;
	public String upload01(MultipartFile mf) {
		// 자바객체 ==> 물리적으로 저장하는 File(물리적 파일 저장되는 객체)
		// 1. 저장 객체 선언..
		File uploadFile = new File(path, mf.getOriginalFilename());	
		// 2. 전송되어 온 객체 저장 객체(File)로 변환하면 파일이 특정 위치에 저장이 된다.
		String msg = null;
		try {
			mf.transferTo(uploadFile);
			msg = "파일업로드 성공";
		} catch (IllegalStateException e) {
			System.out.println(e.getMessage());
			msg = "파일업로드 실패:"+e.getMessage();
		} catch (IOException e) {
			System.out.println("# 파일 관련 예외 #");
			System.out.println(e.getMessage());
			msg = "파일업로드 실패:"+e.getMessage();
		} catch(Exception e) {
			System.out.println("# 기타 예외 #");
			System.out.println(e.getMessage());
			msg = "파일업로드 실패:"+e.getMessage();
		}
		return msg;
	}

}
