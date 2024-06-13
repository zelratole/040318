package backweb.a03_servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import backweb.a04_database.A04_EmpDao;
import backweb.vo.Emp;

/**
 * Servlet implementation class A05_Controller
 * http://localhost:7080/backweb/controller.do
 * 
 */
@WebServlet(name = "controller.do", urlPatterns = { "/controller.do" })
public class A05_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A05_Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// MVC : Model/View/Controller 기능적인 역할 분담을 처리한 개발 패턴..
		// # controller의 역할 : 요청값 받고, view단에 보낼 모델데이터 설정, view단(jsp)호출
		// 1. 요청값 처리
		request.setCharacterEncoding("utf-8");
		String ename = request.getParameter("ename"); 
		String job = request.getParameter("job"); 
		
		// 2. 화면단에 넘길 핵심 데이터 모델 데이터 설정..
		A04_EmpDao dao = new A04_EmpDao();
		request.setAttribute("empList", dao.getEmpList(new Emp(ename,job)));
		
		// 3. 호출할 view단 설정(jsp)
		RequestDispatcher rd = request.getRequestDispatcher("a13_views\\a01_empList.jsp");
		rd.forward(request, response);
		
	}

}
