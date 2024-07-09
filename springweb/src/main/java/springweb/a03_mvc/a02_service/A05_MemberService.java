package springweb.a03_mvc.a02_service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springweb.a03_mvc.a03_dao.A05_MemberDao;
import springweb.z01_vo.Member;

@Service
public class A05_MemberService {

	@Autowired(required=false)
	private A05_MemberDao dao;
	
	
	public Member login(Member mem) {
		return dao.login(mem);
	}
}
