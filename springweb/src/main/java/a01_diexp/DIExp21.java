package a01_diexp;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import a01_diexp.z06_mvc.A01_Controller;
import org.springframework.ui.Model;



public class DIExp21 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String path = "a01_diexp\\di21.xml"; 
		// <bean id="obj" class="java.lang.Object"/>
		AbstractApplicationContext ctx = new GenericXmlApplicationContext(path);
		A01_Controller ob = ctx.getBean("a01_Controller",A01_Controller.class);
		System.out.println("컨테이너 안에 객체:"+ob);
		ob.getEmpList("사원명(홍길동)", null);
		ctx.close();
	}

}
