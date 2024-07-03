package springweb.a03_mvc.a02_service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springweb.a03_mvc.a03_dao.A03_DeptDao;
import springweb.z01_vo.Dept;

@Service
public class A03_DeptService {
	@Autowired(required=false)
	private A03_DeptDao dao;
	
	public List<Dept> getDeptList(Dept sch){
		return dao.getDeptList(sch);
	}
}
