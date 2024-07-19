package springweb.a03_mvc.a02_service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springweb.a03_mvc.a03_dao.A01_Dao;
import springweb.a03_mvc.a03_dao.A02_EmpDao;
import springweb.z01_vo.Dept;
import springweb.z01_vo.Emp;

@Service
public class A01_Service {
	
	// CRUD(create read update delete) 등록 조회 수정 삭제..
	
	// 컨테이너에 있는 객체는 자동을 할당 처리 
	// required=false는 혹시, 이 객체가 없더라도 객체가 없을 때, 종속된 메서드 호출시 
	// 발생하는 nullpointerexception 방지 처리..
	@Autowired(required=false)
	private A01_Dao dao;
	
	@Autowired(required=false)
	private A02_EmpDao dao2;
	
	
	public List<Emp> getEmpList(Emp sch){
		// 요청값이 없는 초기 화면에서 전체 검색 가능하게 처리..
		if(sch.getEname()==null) sch.setEname("");
		if(sch.getJob()==null) sch.setJob("");
		
		return dao2.getEmpList(sch);
	}
	public Emp getEmp(int empno) {
		return dao.getEmp(empno);
	}
	
	public 	String insertEmp(Emp ins) {
		return dao.insertEmp(ins)>0?"등록성공":"등록실패";
	}
	
	public int empnoDupck(int empno) {
		return dao.empnoDupck(empno);
	}
	
	public String updateEmp(Emp upt) {
		return dao.updateEmp(upt)>0?"수정성공":"수정실패";
	}	
	public String deleteEmp(int empno) {
		return dao.deleteEmp(empno)>0?"삭제성공":"삭제실패";
	}
	
	public List<Dept> getDeptList(Dept sch){
		if(sch.getDname()==null) sch.setDname("");
		if(sch.getLoc()==null) sch.setLoc("");
		
		//  like ? ==> like '%요청값%'  키워드 검색이 되게..
		sch.setDname("%"+sch.getDname()+"%");
		sch.setLoc("%"+sch.getLoc()+"%");
		return dao.getDeptList(sch);
	}
	public Dept getDept(int deptno) {
		return dao.getDept(deptno);
	}	
	public String insertDept(Dept ins) {
		return dao.insertDept(ins)>0?"등록성공":"등록실패"; 
	}
	public String updateDept(Dept upt) {
		return dao.updateDept(upt)>0?"수정성공":"수정실패";
	}
	public String deleteDept(int deptno ) {
		return dao.deleteDept(deptno)>0?"삭제성공":"삭제실패";
	}	
}
