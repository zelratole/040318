package a01_diexp;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import a01_diexp.z03_vo.Computer;
import a01_diexp.z03_vo.Cpu;

public class DIExp18 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String path = "a01_diexp\\di18.xml"; 
		// <bean id="obj" class="java.lang.Object"/>
		AbstractApplicationContext ctx = new GenericXmlApplicationContext(path);
		Cpu cpu = ctx.getBean("cpu",Cpu.class);
		Computer computer = ctx.getBean("computer",Computer.class);
		System.out.println("컨테이너 안에 객체:"+cpu);
		System.out.println("컨테이너 안에 객체:"+computer);
		cpu.setCompany("인텔");
		cpu.setModel("i7 3.4GHz");
		computer.setCompany("조립식");
		computer.setCpu(cpu);
		computer.useCpu();
		ctx.close();
	}

}
