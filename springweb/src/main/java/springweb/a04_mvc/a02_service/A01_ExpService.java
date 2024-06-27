package springweb.a04_mvc.a02_service;

import java.util.Date;
import java.util.List;

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
