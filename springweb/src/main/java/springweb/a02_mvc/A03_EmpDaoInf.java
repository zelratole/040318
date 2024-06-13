package springweb.a02_mvc;

import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public interface A03_EmpDaoInf {
	List<Emp> getEmpList(Emp sch);
}
