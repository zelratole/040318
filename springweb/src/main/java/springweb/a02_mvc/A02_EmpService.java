package springweb.a02_mvc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
// springweb.a02_mvc
@Component
public class A02_EmpService {
	// service단 : controller에서 필요로 하는 조건/반복문 데이터 액세스객체를
	//   	가져오는 역할을 한다.
	
	
	@Autowired // 자동을 컨테이너에 있는 객체를 할당해주는 역할..
	private A03_EmpDaoInf dao;
	
	public List<Emp> getEmpList(Emp sch){
		return dao.getEmpList(sch);
	}	
	
}
