package a01_diexp;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import a01_diexp.z01_vo.HPUser;
import a01_diexp.z01_vo.HandPhone;

public class DIExp13 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String path = "a01_diexp\\di13.xml"; 
		// <bean id="obj" class="java.lang.Object"/>
		AbstractApplicationContext ctx = new GenericXmlApplicationContext(path);
		HandPhone hp01 = ctx.getBean("hp01",HandPhone.class);
		HandPhone hp02 = ctx.getBean("hp02",HandPhone.class);

		HPUser hpu00 = ctx.getBean("hpu00",HPUser.class);
		HPUser hpu01 = ctx.getBean("hpu01",HPUser.class);
		HPUser hpu02 = ctx.getBean("hpu02",HPUser.class);
		System.out.println("컨테이너 안에 객체:"+hp01);
		System.out.println("컨테이너 안에 객체:"+hp02);
		System.out.println(hp01.getNumber()+":"+hp01.getCompany());
		System.out.println(hp02.getNumber()+":"+hp02.getCompany());
		hpu00.useMyPhone();
		hpu01.useMyPhone();
		hpu02.useMyPhone();
		
		ctx.close();
	}

}
