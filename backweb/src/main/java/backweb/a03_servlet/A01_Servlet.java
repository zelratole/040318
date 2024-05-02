package backweb.a03_servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class A01_Servlet
 */
public class A01_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A01_Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// html코드(html과 자바코드 혼합된 내용)를 브라우저에 전송(스트림으로)해주는 역할 
		PrintWriter out =  response.getWriter();
		// 자바 프로그램과 혼합해서 문자열로 html코드를 만들어 브라우저에 전송..
		String name="himan";
		out.print("<h1>"+name+"! Hello! servlet promgramming!!</h1>");
		
		
		
		
	}

}
