package board.a03_dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import board.vo.Board;

public interface BoardDao {
	@Select("select * \r\n"
			+ "from board\r\n"
			+ "where subject like '%'||#{subject}||'%'\r\n"
			+ "and writer like '%'||#{writer}||'%'")
	List<Board> getBoardList(Board sch);
}
