package board.a02_service;

import java.io.File;
import java.io.IOException;
import java.util.List;

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
	@Value("#{user.upload}")
	private String path;
	
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
					if(fnm!=null&&!fnm.equals("")) {
						File fup = new File(path,fnm);
						mp.transferTo(fup);
						fcnt++;
						// 파일정보 등록.
						dao.boardFileInsert(
								new Boardfile( fnm, ins.getSubject()+"파일 등록") );
					}
				}
				msg+="\n 파일 "+fcnt+"건 등록 성공";
			} catch (IllegalStateException e) {
				msg+="\n 파일 등록 에러 발생:"+e.getMessage();
				
			} catch (IOException e) {
				msg+="\n 파일 등록 에러 발생"+e.getMessage();
			} catch(Exception e) {
				msg+="\n 파일 등록 기타 에러 발생"+e.getMessage();
			}			
		}
		
		
		return msg;
	}
	
	
	
}
