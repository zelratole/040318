package springweb.a03_mvc.a03_dao;


import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import springweb.z01_vo.Calendar;

public interface A04_CalendarDao {
	@Select("	select id, title, writer, start1 \"start\", end1 \"end\", content, backgroundcolor,\r\n"
			+ "			textcolor, allday, url urlLink\r\n"
			+ "	from calendar")
	List<Calendar> getFullCalendarList();
	
	@Insert("	INSERT INTO calendar values(cal_seq.nextval,\r\n"
			+ "		#{title},#{writer},#{start},#{end},\r\n"
			+ "		#{content},#{backgroundColor},#{textColor}, #{allDay},#{urlLink})")
	int insertCalendar(Calendar ins);
	
	
}
