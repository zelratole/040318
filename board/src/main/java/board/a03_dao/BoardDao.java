package board.a03_dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import board.vo.Board;
import board.vo.Boardfile;

public interface BoardDao {
	@Select("select * \r\n"
			+ "from board\r\n"
			+ "where subject like '%'||#{subject}||'%'\r\n"
			+ "and writer like '%'||#{writer}||'%'")
	List<Board> getBoardList(Board sch);
	
	@Insert("insert into board values(board_seq.nextval,#{refno},#{subject},\r\n"
			+ "	#{content},#{writer},#{readcnt},sysdate,sysdate) ")
	int boardInsert(Board ins);
		
	@Insert("INSERT INTO boardfile values(board_seq.currval,#{fname},\r\n"
			+ "	#{etc},sysdate,sysdate)")
	int boardFileInsert(Boardfile ins);	
	
}
