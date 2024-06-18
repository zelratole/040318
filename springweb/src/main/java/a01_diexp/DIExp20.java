package a01_diexp;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import a01_diexp.z05_vo.Computer;
import a01_diexp.z05_vo.Cpu;
import a01_diexp.z05_vo.HPUser;
import a01_diexp.z05_vo.HandPhone;

public class DIExp20 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String path = "a01_diexp\\di20.xml"; 
		// <bean id="obj" class="java.lang.Object"/>
		AbstractApplicationContext ctx = new GenericXmlApplicationContext(path);
		//Cpu cpu = ctx.getBean("cpu",Cpu.class);

		//cpu.setCompany("인텔");
		//cpu.setModel("I7 4.5GHz");;
		
		
		Computer computer = ctx.getBean("computer",Computer.class);
		
		System.out.println("컨테이너 안에 객체:"+computer);
		computer.setCompany("삼성컴");
		computer.useCpu();
		
		/*
		ex) HandPhone, HPUser 클래스 autowiring 처리해서 출력하세요..
		
		 * */
		HandPhone handPhone = ctx.getBean("handPhone",HandPhone.class);
		HPUser hpuser = ctx.getBean("hpuser",HPUser.class);
		System.out.println(handPhone);
		handPhone.setNumber("010-8888-9999");
		handPhone.setCompany("아이폰 15");
		System.out.println(hpuser);
		hpuser.setName("마길동");
		hpuser.useMyPhone();
		
		
		ctx.close();
	}

}
