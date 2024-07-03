package springweb.a03_mvc.a02_service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springweb.a03_mvc.a03_dao.A02_EmpDao;
import springweb.z01_vo.Emp;

@Service("empMyService")
public class A02_EmpService {
	@Autowired
	private A02_EmpDao dao;
	
	public List<Emp> getEmpList(Emp sch){
		//sch.setEname("%"+sch.getEname()+"%");
		//sch.setJob("%"+sch.getJob()+"%");
		
		return dao.getEmpList(sch);
	}
}
