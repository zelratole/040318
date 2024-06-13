package backweb.a03_servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import backweb.a04_database.A07_DeptDao;
import backweb.vo.Dept;

/**
 * Servlet implementation class A06_DeptController
 * http://localhost:7080/backweb/deptController.do
 */
@WebServlet(name = "deptController.do", urlPatterns = { "/deptController.do" })
public class A06_DeptController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A06_DeptController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		// 1. 요청값 처리.
		String dname = request.getParameter("dname");
		String loc = request.getParameter("loc");
		// 2. 모델 데이터 설정.
		A07_DeptDao dao = new A07_DeptDao();
		request.setAttribute("deptList", dao.getDeptList(new Dept(0,dname, loc)));
		
		// 3. 뷰단 호출.
		RequestDispatcher rd = request.getRequestDispatcher(
				"a13_views\\a02_deptList.jsp");
		rd.forward(request, response);
		
		
	}

}
