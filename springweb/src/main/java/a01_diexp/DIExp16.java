package a01_diexp;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import a01_diexp.z01_vo.Computer;
import a01_diexp.z01_vo.HPUser;

public class DIExp16 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String path = "a01_diexp\\di16.xml"; 
		// <bean id="obj" class="java.lang.Object"/>
		AbstractApplicationContext ctx = new GenericXmlApplicationContext(path);
		HPUser hu = ctx.getBean("hu",HPUser.class);
		System.out.println("컨테이너 안에 객체:"+hu);
		hu.useMyPhone();
		// ex) Computer, Cpu 연관관계 설정하고, 호출하여 출력하세요..
		Computer com = ctx.getBean("com", Computer.class);
		com.useCpu();
		
		
		ctx.close();
		
	}

}
