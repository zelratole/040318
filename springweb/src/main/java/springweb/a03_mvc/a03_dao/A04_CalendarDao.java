package springweb.a03_mvc.a03_dao;


import java.util.List;

import org.apache.ibatis.annotations.Select;

import springweb.z01_vo.Calendar;

public interface A04_CalendarDao {
	@Select("	select id, title, writer, start1 \"start\", end1 \"end\", content, backgroundcolor,\r\n"
			+ "			textcolor, allday, url\r\n"
			+ "	from calendar")
	List<Calendar> getFullCalendarList();
}
