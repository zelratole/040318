package a01_diexp.z01_vo;

public class Test01 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		HandPhone hp01 = new HandPhone("010-8888-9999","아이폰");
		HandPhone hp02 = new HandPhone();
		hp02.setNumber("010-5555-7777");
		hp02.setCompany("갤럭시");
		
		HPUser hpu01 = new HPUser("마길동");
		hpu01.useMyPhone(); // 객체가 할당되지 않았을 때, 호출 내용
		
		// void setHandPhone(HandPhone handPhone) 
		hpu01.setHandPhone(hp01); 
		// HandPhone handPhone=hp01;
		// HandPhone handPhone=new HandPhone("010-8888-9999","아이폰");
		hpu01.useMyPhone(); // hp01객체가 할당되었을 때, 호출 내용
		System.out.println("시간지나고 마음이 변경되어 핸드폰을 교체...");
		hpu01.setHandPhone(hp02);
		hpu01.useMyPhone(); // hp02객체가 할당되었을 때, 호출 내용..
		// ex) Cpu(성능명, 제조사)  Computer (제조사, Cpu)
		//      				 void useCpu() : Cpu가 할당되었을 때와 없을 때 나누어서 출력..
		
		
	}

}
