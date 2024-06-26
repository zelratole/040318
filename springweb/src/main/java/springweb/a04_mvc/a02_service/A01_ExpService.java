package springweb.a04_mvc.a02_service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springweb.a04_mvc.a03_dao.A01_ExpDao;

@Service
public class A01_ExpService {
	@Autowired(required=false)
	private A01_ExpDao dao; 
	// dao = new A01_ExpDaoImp();(mybatis가 만들어준 실제 객체) 처리해 주는 Autowired
	
	public void daoExp01() {
		System.out.println("1. 단일 데이터 가져오기:"+
					dao.getCount());
		//  앞으로 추가할 메서드 여기서 호출 처리..
		
	}
	
	
}
