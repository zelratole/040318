package springweb.a02_mvc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springweb.a03_mvc.a03_dao.A01_Dao;
import springweb.z01_vo.Emp;
// springweb.a02_mvc
@Service
public class A02_EmpMaytisService {
	
	@Autowired // 자동을 컨테이너에 있는 객체를 할당해주는 역할..
	private A01_Dao dao; // A03_EmpDaoInf dao = new A04_EmpDao();
	
	public List<Emp> getEmpList(Emp sch){
		if(sch.getEname()==null) sch.setEname(""); 
		if(sch.getJob()==null) sch.setJob(""); 
		
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
