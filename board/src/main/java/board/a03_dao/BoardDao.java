package board.a03_dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import board.vo.Board;
import board.vo.BoardSch;
import board.vo.Boardfile;

public interface BoardDao {
	
	
	
	@Select("SELECT count(*)\r\n"
			+ "FROM board\r\n"
			+ "WHERE subject LIKE '%'||#{subject}||'%'\r\n"
			+ "AND writer LIKE '%'||#{writer}||'%'\r\n")
	int getBoardCount(BoardSch sch);
	
	@Select("SELECT *\r\n"
			+ "FROM (\r\n"
			+ "	select rownum cnt, level, b.*  \r\n"
			+ "	from board b\r\n"
			+ "	where subject like '%'||#{subject}||'%'\r\n"
			+ "	and writer like '%'||#{writer}||'%'\r\n"
			+ "	start with refno = 0\r\n"
			+ "	connect by prior no = refno\r\n"
			+ "	order siblings by no DESC )\r\n"
			+ "WHERE cnt BETWEEN #{start} AND #{end}")
	List<Board> getBoardList(Board sch);
	
	
	
	
	@Insert("insert into board values(board_seq.nextval,#{refno},#{subject},\r\n"
			+ "	#{content},#{writer},#{readcnt},sysdate,sysdate) ")
	int boardInsert(Board ins);
		
	@Insert("INSERT INTO boardfile values(board_seq.currval,#{fname},\r\n"
			+ "	#{etc},sysdate,sysdate)")
	int boardFileInsert(Boardfile ins);	
	
	@Select("select * from board where no = #{no}")
	Board getBoard(@Param("no") int no );
	
	@Select("select fname from boardfile where no = #{no}")
	List<String> getFiles(@Param("no") int no);
	
	@Update("update board\r\n"
			+ "   set readcnt = readcnt + 1\r\n"
			+ "where no = #{no}")
	int uptReadCnt(@Param("no") int no);
	
	@Update("	UPDATE BOARD \r\n"
			+ "	SET subject = #{subject},\r\n"
			+ "	    content = #{content},\r\n"
			+ "	    uptdte = sysdate\r\n"
			+ "WHERE NO = #{no}")
	int updateBoard(Board upt);

	@Delete("DELETE FROM board\r\n"
			+ "WHERE NO = #{no}")
	int deleteBoard(@Param("no") int no);
/*
int updateBoard(Board upt);
int deleteBoard(@Param("no") int no);
 * */	
	
	
	
}
