package a01_diexp.z06_mvc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class A02_Service {

	@Autowired(required = false)  // 해당 객체가 containter에 없더라도 nullpointer 에러 발생 방지 해줌..
	private A03_Dao dao;  
	// ? 인터페이스임에도 불구하고 아래와 메서드에서 객체 생성 메서드 호출 가능 이유??
	// 인터페이스(추상) = new 실제객체();
	// 참조.메서드() ==> 다형성에 의해서 실제객체가 가지고 있는 메서드 활용..
	
	public String getList(String sch) {
		return dao.getList(sch);
	}
}
