package a01_diexp;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import a01_diexp.z02_vo.Music;
import a01_diexp.z02_vo.Person;
import a01_diexp.z02_vo.Product;

public class DIExp17 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String path = "a01_diexp\\di17.xml"; 
		// <bean id="obj" class="java.lang.Object"/>
		AbstractApplicationContext ctx = new GenericXmlApplicationContext(path);
		// Product Person Music
		Product product = ctx.getBean("product",Product.class);
		Person person = ctx.getBean("person",Person.class);
		Music music = ctx.getBean("music",Music.class);
		System.out.println("컨테이너 안에 객체:"+product);
		product.setName("사과");
		product.setPrice(2000);
		product.setCnt(3);
		System.out.println(product.getName());
		System.out.println(product.getPrice());
		System.out.println(product.getCnt());
		System.out.println("컨테이너 안에 객체:"+person);
		System.out.println("컨테이너 안에 객체:"+music);
		ctx.close();
		
		
	}

}
