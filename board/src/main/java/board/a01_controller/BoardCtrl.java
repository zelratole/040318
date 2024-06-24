package board.a01_controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardCtrl {
	// http://localhost:7080/board/boardList.do
	
	@RequestMapping("boardList.do")
	public String boardList(Model d) {
		return "a01_boardList";
	}
}
