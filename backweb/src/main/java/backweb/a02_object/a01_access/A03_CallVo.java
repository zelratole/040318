package backweb.a02_object.a01_access;

import backweb.a02_object.a01_access.z05.Student;
import backweb.a02_object.a01_access.z06.MovieVo;
import backweb.a02_object.a01_access.z06.Teacher;
import backweb.a02_object.a01_access.z06.UserProfileVo;
import backweb.a02_object.a01_access.z06.WeatherInfoVo;

public class A03_CallVo {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Student st = new Student();
		st.setName("홍길동");
		st.setKor(80);
		st.setEng(70);
		st.setMath(90);
		System.out.println(st.getName());
		System.out.println(st.getEng());
		System.out.println(st.getMath());
		Student st1 = new Student("마길동", 90,90,80);
		System.out.println(st1.getName());
		System.out.println(st1.getEng());
		System.out.println(st1.getMath());		
		
		Teacher tc = new Teacher();
		tc.setName("오길동");
		//ex)  backweb.a02_object.a01_access.z06 패키지 안에.
		// MovieVo(제목, 제작자, 출시일), 
		// WeatherInfoVo(대상도시, 온도, 습도)를 만들고,
		// UserProfileVo(이름, 이메일, 나이)
		// 	 현재 main() 메서드에서 호출하여 정보를 get메서드로 출력하세요..
		//
		MovieVo mv = new MovieVo("인셉션","클리스토퍼 놀란",2010);
		System.out.println(mv.getTitle());
		System.out.println(mv.getDirector());
		System.out.println(mv.getReleaseYear());
		
		WeatherInfoVo weather = new WeatherInfoVo("수원", 17.5, 72.5);
		System.out.println("도시:"+weather.getCity());
		System.out.println("온도:"+weather.getTemperature());
		System.out.println("습도:"+weather.getHumidity());
		UserProfileVo user = new UserProfileVo("홍길동", "hong@example.com", 25);
		System.out.println("이름:"+user.getUsername());
		System.out.println("이메일:"+user.getEmail());
		System.out.println("나이:"+user.getAge());
		
		
		
		
	}

}
