package springweb.a03_mvc.a02_service;

import javax.mail.Message.RecipientType;
import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import springweb.z01_util.Util;
import springweb.z01_vo.MailVo;
import springweb.z01_vo.RegMember;

@Service
public class A07_MailService {
	
	@Autowired(required = false)
	private JavaMailSender sender;
	
	public String sendMail(MailVo email) {
		String msg = "메일 발송 성공";
		// 1. 메일 발송 데이터 전송을 위한 객체 생성
		MimeMessage mmsg = sender.createMimeMessage();
		
		// 2. 메일 발송 객체에 요청값으로 받은 데이터 할당(MailVo ==> MimeMessage)
		
		try {
			// 1) 제목
			mmsg.setSubject(email.getTitle());
			// 2) 수신자
			mmsg.setRecipient(RecipientType.TO, new InternetAddress(email.getReceiver()));
			// 3) 발신자
			//mmsg.setSender(new InternetAddress(email.getSender()));
			// 4) 내용
			mmsg.setText(email.getContent());
		// 3. 발송처리
			sender.send(mmsg);
			
		} catch (MessagingException e) {
			System.out.println("메일 전송 에러:"+e.getMessage());
			msg = "메일 전송 에러:"+e.getMessage();
		} catch(Exception e) {
			System.out.println("기타 에러:"+e.getMessage());
			msg = "기타 에러:"+e.getMessage();
		}
		return msg;
	}

	public String makeEmpMail(RegMember email) {
		String msg = "사원 등록 및 메일 발송 성공";
		// 1. 메일 발송 데이터 전송을 위한 객체 생성
		MimeMessage mmsg = sender.createMimeMessage();
		try {
			mmsg.setSubject(email.getEmpno()+" 입사하신 것을 환영합니다!");
			mmsg.setRecipient(RecipientType.TO, new InternetAddress(email.getEmail()));
			String content = "입사하신 것을 환영합니다.\r\n"
					+ "	사번은 "+email.getEmpno()+" 임시비번은 "+Util.mkTPwd()+" 입니다.\r\n"
					+ " 이 계정과 비번으로 들어 오셔서, 인증하고, 개인 정보를 수정해주세요.. ";
			mmsg.setText(content);
			sender.send(mmsg);
		} catch (MessagingException e) {
			System.out.println("메일 전송 에러:"+e.getMessage());
			msg = "메일 전송 에러:"+e.getMessage();
		} catch(Exception e) {
			System.out.println("기타 에러:"+e.getMessage());
			msg = "기타 에러:"+e.getMessage();
		}
		return msg;
	}
	

}
