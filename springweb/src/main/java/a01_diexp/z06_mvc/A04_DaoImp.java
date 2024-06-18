package a01_diexp.z06_mvc;

import org.springframework.stereotype.Repository;

@Repository
public class A04_DaoImp implements A03_Dao{

	@Override
	public String getList(String sch) {
		// TODO Auto-generated method stub
		return sch+"로 조회성공";
	}
	

}
