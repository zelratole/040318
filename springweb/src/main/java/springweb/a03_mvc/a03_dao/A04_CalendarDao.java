package springweb.a03_mvc.a03_dao;


import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

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
	@Update("UPDATE CALENDAR \r\n"
			+ "SET title = #{title},\r\n"
			+ "    start1=#{start},\r\n"
			+ "    end1=#{end},\r\n"
			+ "    writer=#{writer},\r\n"
			+ "    content=#{content},\r\n"
			+ "    backgroundColor=#{backgroundColor},\r\n"
			+ "    textColor=#{textColor},\r\n"
			+ "    allDay = #{allDay},\r\n"
			+ "    url=#{urlLink}\r\n"
			+ "WHERE id = #{id}")
	int updateCalendar(Calendar upt);
	
	@Delete("DELETE FROM calendar\r\n"
			+ "WHERE id = #{id}")
	int deleteCalendar(@Param("id") int id);
	
	
}
