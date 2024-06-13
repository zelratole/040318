package a01_diexp;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class DIExp10 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String path = "a01_diexp\\di10.xml"; // <bean id="obj" class="java.lang.Object"/>
		AbstractApplicationContext ctx = new GenericXmlApplicationContext(path);
		Object ob = ctx.getBean("obj",Object.class);
		System.out.println("컨테이너 안에 객체:"+ob);
		ctx.close();
	}

}
