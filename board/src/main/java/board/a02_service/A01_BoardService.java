package board.a02_service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import board.a03_dao.A01_BoardDao;
import board.vo.Board;

@Service
public class A01_BoardService {
	@Autowired(required=false)
	private A01_BoardDao dao;
	
	public List<Board> getBoardList(Board sch){
		if(sch.getSubject()==null) sch.setSubject("");
		if(sch.getWriter()==null) sch.setWriter("");
		
		return dao.getBoardList(sch);
	}
}
