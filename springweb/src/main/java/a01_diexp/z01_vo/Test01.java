package a01_diexp.z01_vo;

public class Test01 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		HandPhone hp01 = new HandPhone("010-8888-9999","아이폰");
		HandPhone hp02 = new HandPhone();
		hp02.setNumber("010-5555-7777");
		hp02.setCompany("갤럭시");
		
		HPUser hpu01 = new HPUser("마길동");
		hpu01.useMyPhone();
		hpu01.setHandPhone(hp01);
		hpu01.useMyPhone();
		System.out.println("시간지나고 마음이 변경되어 핸드폰을 교체...");
		hpu01.setHandPhone(hp02);
		hpu01.useMyPhone();
		
		
	}

}
