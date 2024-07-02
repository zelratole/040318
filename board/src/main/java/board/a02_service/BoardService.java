package board.a02_service;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import board.a03_dao.BoardDao;
import board.vo.Board;
import board.vo.Boardfile;

@Service
public class BoardService {
	@Autowired(required=false)
	private BoardDao dao;
	
	public List<Board> getBoardList(Board sch){
		if(sch.getSubject()==null) sch.setSubject("");
		if(sch.getWriter()==null) sch.setWriter("");
		
		return dao.getBoardList(sch);
	}

	@Value("${user.upload}")
	String path;

	public String boardInsert(Board ins) {
		String msg = null;
		// 메인테이블 등록..
		msg = dao.boardInsert(ins)>0?"게시물 등록 성공":"게시물 등록 실패";
		
		// 파일업로드관련 등록 정보
		if(ins.getReports()!=null && ins.getReports().length>0) {
			// 물리적 파일 등록
			try {
				int fcnt=0;
				for(MultipartFile mp:ins.getReports() ) {
					String fnm = mp.getOriginalFilename();
					if( fnm!=null && !fnm.equals("") ) {
						File fup = new File(path,fnm);
						mp.transferTo(fup);
						//fcnt++;
						// 파일정보 등록.
						fcnt+=dao.boardFileInsert(
								new Boardfile( fnm, ins.getSubject()+"관련 파일 등록") );
					}
				}
				msg+="\\n 파일 "+fcnt+"건 등록 성공";
			} catch (IllegalStateException e) {
				msg+="\\n 파일 등록 에러 발생:"+e.getMessage();
				
			} catch (IOException e) {
				msg+="\\n 파일 등록 에러 발생"+e.getMessage();
			} catch(Exception e) {
				msg+="\\n 파일 등록 기타 에러 발생"+e.getMessage();
			}			
		}
		System.out.println("메시지:"+msg);
		
		
		return msg;
	}
	public Board detail(int no) {
		dao.uptReadCnt(no);
		Board dt = dao.getBoard(no);
		dt.setFnames(dao.getFiles(no));
		return dt;
	}
	
	public Board getBoard(int no) {
		return dao.getBoard(no);
	}
	public List<String> getFiles(int no){
		return dao.getFiles(no);
	}
	public int uptReadCnt(int no) {
		return dao.uptReadCnt(no);
	}
	public String updateBoard(Board upt) {
		
		return dao.updateBoard(upt)>0?"수정성공":"수정실패";
	}
	public String deleteBoard(int no) {
		
		return dao.deleteBoard(no)>0?"삭제성공":"삭제실패";
	}	
}
