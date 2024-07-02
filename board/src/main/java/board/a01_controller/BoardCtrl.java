package board.a01_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
		return "WEB-INF\\views\\a01_boardList.jsp";
	}
	@GetMapping("boardInsert.do")
	public String boardInsertFrm() {
		return "WEB-INF\\views\\a02_boardInsert.jsp";
	}
	
	@PostMapping("boardInsert.do")
	public String boardInsert(Board ins, Model d) {
		d.addAttribute("msg", service.boardInsert(ins));
		return "WEB-INF\\views\\a02_boardInsert.jsp";
	}
	@GetMapping("boardDetail.do")
	public String boardDetail(@RequestParam("no") int no, Model d) {
		d.addAttribute("board", service.detail(no));
		return "WEB-INF\\views\\a03_boardDetail.jsp";
	}

	@PostMapping("boardUpdate.do")
	public String boardUpdate(Board upt, Model d) {
		d.addAttribute("msg", service.updateBoard(upt));
		d.addAttribute("board", service.detail(upt.getNo()));
		return "WEB-INF\\views\\a03_boardDetail.jsp";
	}
	// boardUpdate.do boardDelete.do
	@GetMapping("boardDelete.do")
	public String boardDelete(@RequestParam("no") int no, Model d) {
		d.addAttribute("msg", service.deleteBoard(no));
		d.addAttribute("proc", "del");
		return "WEB-INF\\views\\a03_boardDetail.jsp";
	}	
	
	
	
	
	
}
