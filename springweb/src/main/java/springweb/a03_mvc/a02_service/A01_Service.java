package springweb.a03_mvc.a02_service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springweb.a03_mvc.a03_dao.A01_Dao;
import springweb.z01_vo.Emp;

@Service
public class A01_Service {
	@Autowired(required=false)
	private A01_Dao dao;
	
	public List<Emp> getEmpList(Emp sch){
		
		if(sch.getEname()==null) sch.setEname("");
		if(sch.getJob()==null) sch.setJob("");
		
		return dao.getEmpList(sch);
	}
}
