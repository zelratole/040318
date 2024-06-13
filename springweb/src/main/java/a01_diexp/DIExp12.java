package a01_diexp;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import a01_diexp.z01_vo.Person;

public class DIExp12 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String path = "a01_diexp\\di12.xml"; 
		// <bean id="obj" class="java.lang.Object"/>
		AbstractApplicationContext ctx = new GenericXmlApplicationContext(path);
		Person ob = ctx.getBean("p01",Person.class);
		System.out.println("컨테이너 안에 객체:"+ob);
		System.out.println(ob.getName());
		System.out.println(ob.getAge());
		System.out.println(ob.getLoc());
		ctx.close();
		// ex) Music 클래스 선언 음악명 가수 발매년도 선언하고, 생성자로 컨테이너
		//     객체 생성 후, 호출
		
	}

}
