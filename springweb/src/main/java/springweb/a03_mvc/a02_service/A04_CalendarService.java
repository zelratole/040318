package springweb.a03_mvc.a02_service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springweb.a03_mvc.a03_dao.A04_CalendarDao;
import springweb.z01_vo.Calendar;

@Service
public class A04_CalendarService {
	@Autowired(required = false)
	private A04_CalendarDao dao;
	
	
	public String insertCalendar(Calendar ins){
		System.out.println(ins);
		return dao.insertCalendar(ins)>0?"등록성공":"등록실패";
	}
	public List<Calendar> getFullCalendarList(){
		List<Calendar> list = dao.getFullCalendarList();
		System.out.println(dao);
		System.out.println("트래킹 연습");
		//System.out.println(dao.getFullCalendarList());
		return list;
	}	
	
}
