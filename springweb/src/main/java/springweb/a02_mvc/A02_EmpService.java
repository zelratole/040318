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
	private A03_EmpDaoInf dao; // A03_EmpDaoInf dao = new A04_EmpDao();
	
	public List<Emp> getEmpList(Emp sch){
		return dao.getEmpList(sch);
	}	
	public String insertEmp(Emp ins) {
		return dao.insertEmp(ins)>0?"등록성공":"등록실패";
	}
	public Emp getEmp(int empno) {
		return dao.getEmp(empno);
	}
	public String updateEmp(Emp upt) {
		return dao.updateEmp(upt)>0?"수정성공":"수정실패";	
	}
	public String  deleteEmp(int empno) {
		return dao.deleteEmp(empno)>0?"삭제성공":"삭제실패";
	}	
	
}
