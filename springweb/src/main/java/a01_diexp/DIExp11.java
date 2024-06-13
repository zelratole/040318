package a01_diexp;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import a01_diexp.z01_vo.Person;
import a01_diexp.z01_vo.Product;

public class DIExp11 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String path = "a01_diexp\\di11.xml"; // <bean id="obj" class="java.lang.Object"/>
		AbstractApplicationContext ctx = new GenericXmlApplicationContext(path);
		Object ob = ctx.getBean("obj",Object.class);
		System.out.println("컨테이너 안에 객체:"+ob);
		Person p01 = ctx.getBean("p01", Person.class);
		
		System.out.println("컨테이너 안에 있는 p01 객체:"+p01);
		System.out.println("컨테이너 안에 있는 p01 객체 name:"+p01.getName());
		System.out.println("컨테이너 안에 있는 p01 객체 age:"+p01.getAge());
		System.out.println("컨테이너 안에 있는 p01 객체 loc:"+p01.getLoc());
		Product prod = ctx.getBean("prod", Product.class);
		System.out.println("물건 객체:"+prod);
		System.out.println("물건명:"+prod.getName());
		System.out.println("가격:"+prod.getPrice());
		System.out.println("갯수:"+prod.getCnt());
		
		ctx.close();
	}

}
