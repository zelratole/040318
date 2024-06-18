package a01_diexp;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import a01_diexp.z04_vo.Computer;
import a01_diexp.z04_vo.Cpu;

public class DIExp19 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String path = "a01_diexp\\di19.xml"; 
		// <bean id="obj" class="java.lang.Object"/>
		AbstractApplicationContext ctx = new GenericXmlApplicationContext(path);
		Cpu cpu = ctx.getBean("cpu",Cpu.class);
		cpu.setCompany("인텔");
		cpu.setModel("I7 4.5GHz");
		
		
		Computer computer = ctx.getBean("computer",Computer.class);
		
		System.out.println("컨테이너 안에 객체:"+computer);
		computer.setCompany("삼성컴");
		computer.useCpu();
		
		
		
		ctx.close();
	}

}
