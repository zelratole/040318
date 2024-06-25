package board.a01_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import board.a02_service.BoardService;
import board.vo.Board;

@Controller
public class BoardCtrl {
	@Autowired(required = false)
	private BoardService service;
	
	// http://localhost:7080/board/boardList.do
	@RequestMapping("boardList.do")
	public String boardList(Board sch, Model d) {
		d.addAttribute("blist", service.getBoardList(sch));
		return "a01_boardList";
	}
}
