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
import board.vo.BoardSch;
import board.vo.Boardfile;

@Service
public class BoardService {
	@Autowired(required=false)
	private BoardDao dao;
	
	public List<Board> getBoardList(BoardSch sch){
		if(sch.getSubject()==null) sch.setSubject("");
		if(sch.getWriter()==null) sch.setWriter("");
		// 1. 총데이터 수(DB)
		sch.setCount(dao.getBoardCount(sch));
		
		// 2. 현재 클릭한 번호(화면단 요청값)..- 초기값 1(첫번째페이지)
		if(sch.getCurPage()==0) {
			sch.setCurPage(1);
		}
		
		// 3. 한페이지에 보일 데이터 건수(화면단 선택으로 요청값) - 초기값5(첫번째 페이지)
		if(sch.getPageSize()==0) {
			sch.setPageSize(5);
		}
		
		// 4. 총페이지수(수치연산/알고리즘 - 총데이터건수/한페이지에 보일 데이터 수)
		
		//    13건   5  ==>  13/5 ==> 2.6  ==> 3.0 ==> 3
		//                  10/5 ==> 2   ==> 2.0 ==> 2
		//                  7/5 ==> 1.4 ==> 2.0 ==> 2
		//                  5/5 ==> 1  ==> 1.0 ==> 1
		//  정수/정수 ==> 실수/정수 vs 정수/실수 ==> 실수
		// sch.getCount()/sch.getPageSize() ==> 정수..
		//  sch.getCount()/(double)sch.getPageSize() ==> 실수
		//  Math.ceil(sch.getCount()/(double)sch.getPageSize()) ==> 실수
		// (int)(Math.ceil(sch.getCount()/(double)sch.getPageSize())) ==> 정수
		sch.setPageCount( (int)(Math.ceil(sch.getCount()/(double)sch.getPageSize())) );
		
		
		// 5. 시작번호/마지막번호 -  마지막번호?( 한페이지에 보일 데이터 건수*현재 클릭한 번호)
		///   1페이지 클릭 ==> 1~5
		///   2페이지    ==> 6~10
		//    3        ==> 11~15
		sch.setStart(1);
		sch.setEnd(5);
		
		
		// start, end  ==> 특정 페이지 범위에 데이터 출력..
		
		
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
