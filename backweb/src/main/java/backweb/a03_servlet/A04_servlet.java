package backweb.a03_servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class A04_servlet
 */
@WebServlet(name = "call04.do", urlPatterns = { "/call04.do" })
public class A04_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A04_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// // 브라우저(클라이언트)   vs   톰켓서버(서버)
		// 1. http://localhost:7080/backweb/call04.do?q=기억 ( 브라우저(클라이언트) )
		// 2. call01.do와 mapping 자원을 호출해서, 해당 코드에서 실행되는 내용 수행( 톰캣서버(서버))
		//    - request : 혹시, 클라이언트에서 넘겨온 값이 있으면 처리해준다. request.getParameter("name")
		//    - response : 반응객체:서버에서 클라이언트에 전송해주는 역할을 하는 객체		
		//      	어떤 형식으로 클라이언트에 넘겨줄 것인지? text/html; charset=UTF-8
		//          스트림으로 문자열을 전송해는 객체 response.getWriter(); (response.getWriter();)
		//          out.print("html태그-java코드를 실행한 결과 포함")
		//          client(브라우저에) 최종결과물은 html 태그를 전송
		// 3. 받은 html 문자열 해석(브라우저)
		//      화면에 출력...
		request.setCharacterEncoding("utf-8");
		String query = request.getParameter("q");
		System.out.println("검색된 값:"+query);
		
		response.setContentType("text/html; charset=UTF-8");
		
		
		PrintWriter out =  response.getWriter();
		String name="good Man!";
		out.print("<h1>"+name+"! 드디어 한글도 처리된다.!!!</h1>");	
		out.print("<h2>검색된 내용은 : "+query+"</h2>");
		
				
		
	}

}
