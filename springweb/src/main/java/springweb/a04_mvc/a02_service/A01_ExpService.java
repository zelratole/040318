package springweb.a04_mvc.a02_service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springweb.a04_mvc.a03_dao.A01_ExpDao;
import springweb.a04_mvc.z01_vo.Dept01;
import springweb.a04_mvc.z01_vo.Emp01;
import springweb.a04_mvc.z01_vo.Emp02;
import springweb.a04_mvc.z01_vo.EmpDept;
import springweb.a04_mvc.z01_vo.Emp_Dept01;
import springweb.a04_mvc.z01_vo.Employee01;

@Service
public class A01_ExpService {
	@Autowired(required=false)
	private A01_ExpDao dao; 
	// dao = new A01_ExpDaoImp();(mybatis가 만들어준 실제 객체) 처리해 주는 Autowired
	public void daoExp02() {
		System.out.println("매개변수1개 전송(사원번호==>직책):"
				+dao.getJob(7369));
	}
	
	public void daoExp01() {
		System.out.println("1. 단일 데이터 가져오기:"+
					dao.getCount());
		//  앞으로 추가할 메서드 여기서 호출 처리..
		System.out.println("2. 직책 이름 가져오기:"+dao.getJob());
		System.out.println("3. 최고 급여:"+dao.getHiSal());
		System.out.println("4. 급여:"+dao.getSal());
		System.out.println("5. 부서위치:"+dao.getLoc());
		System.out.println("# 단일 열, 다중행 처리 ");
		for(int empno:dao.getEmpnos()) {
			System.out.println(empno);
		}
		System.out.println("# 사원명 들 ##");
		for(String ename:dao.getEnames()) {
			System.out.println(ename);
		}
		System.out.println("# 단일 객체 호출 #");
		Emp02 e = dao.getEmp02();
		System.out.println("사원명:"+e.getEname());
		System.out.println("급여:"+e.getSal());
		System.out.println("# 단일 객체 호출 연습 1 #");
		Emp01 e1 = dao.getEmp01();
		System.out.println(e1.getEname());
		System.out.println(e1.getJob());
		System.out.println(e1.getSal());
		System.out.println("# 단일 객체 호출 연습 2 #");
		System.out.println(dao.getDept01().getDname());
		System.out.println(dao.getDept01().getLoc());
		System.out.println("# 단일 객체 호출 연습 3");
		Emp_Dept01 ed01 = dao.getEmpDept();
		System.out.println(ed01.getEmpno());
		System.out.println(ed01.getEname());
		System.out.println(ed01.getDname());
		System.out.println(ed01.getLoc());
		System.out.println("# 다중행 다중열 리스트 #");
		for(Employee01 emp : dao.getEmployeeList()) {
			System.out.print(emp.getDepartment_id()+"\t");
			System.out.print(emp.getEmployee_id()+"\t");
			System.out.print(emp.getFirst_name()+"\t");
			System.out.println(emp.getSalary());
		}
		System.out.println("# 다중행 다중열 처리 ename job dname #");
		for(EmpDept ed:dao.get_04_enamejobdname()) {
			System.out.print(ed.getEname()+"\t");
			System.out.print(ed.getJob()+"\t");
			System.out.print(ed.getDname()+"\n");
		}
	}
	public List<Employee01>  getEmployeeList(){
		return dao.getEmployeeList();
	}
	public List<EmpDept> get_01_enamejobsal(){
		return dao.get_01_enamejobsal();
	}
	public List<EmpDept> get_02_enamehiredatedeptno(){
		return dao.get_02_enamehiredatedeptno();
	}
	public List<EmpDept> get_03_dnameename(){
		return dao.get_03_dnameename();
	}
	public List<EmpDept> get_04_enamejobdname(){
		return dao.get_04_enamejobdname();
	}
	public List<EmpDept> get_05_enamesalcomm(){
		return dao.get_05_enamesalcomm();
	}	
	
	
	public Emp_Dept01 getEmpDept() {
		return dao.getEmpDept();
	}
	public Dept01 getDept01() {
		return dao.getDept01();
	}
	public Emp01 getEmp01() {
		return dao.getEmp01();
	}
	public Emp02 getEmp02() {
		return dao.getEmp02();
	}
	public int getCount() {
		return dao.getCount();
	}
	public String getJob() {
		return dao.getJob();
	}
	public int getHiSal(){
		   return dao.getHiSal();
		}
	public double getSal() {
		return dao.getSal();
	}
	public String getLoc() {
		return dao.getLoc();
	}
	public List<Integer> getEmpnos(){
		return dao.getEmpnos();
	}
	public List<String> getEnames(){
		return dao.getEnames();
	}
	public List<Date> getHiredate(){
		return dao.getHiredate();
	}
	public List<Double> getSals(){
		return dao.getSals();
	}
	public List<Integer> getEmpnos2(){
		return dao.getEmpnos2();
	}
	public	List<String> getEnames2(){
		return dao.getEnames2();
	}

		
	
	
}
