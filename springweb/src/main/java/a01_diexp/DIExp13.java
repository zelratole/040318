package a01_diexp;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import a01_diexp.z01_vo.HandPhone;

public class DIExp13 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String path = "a01_diexp\\di13.xml"; 
		// <bean id="obj" class="java.lang.Object"/>
		AbstractApplicationContext ctx = new GenericXmlApplicationContext(path);
		HandPhone hp01 = ctx.getBean("hp01",HandPhone.class);
		HandPhone hp02 = ctx.getBean("hp02",HandPhone.class);
		System.out.println("컨테이너 안에 객체:"+hp01);
		System.out.println("컨테이너 안에 객체:"+hp02);
		System.out.println(hp01.getNumber()+":"+hp01.getCompany());
		System.out.println(hp02.getNumber()+":"+hp02.getCompany());
		
		ctx.close();
	}

}
