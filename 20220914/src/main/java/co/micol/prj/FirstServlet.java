package co.micol.prj;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.spi.DirStateFactory.Result;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.common.DAO;


@WebServlet("/FirstServlet")
public class FirstServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private PreparedStatement psmt; // DBMS에 명령을 보내고
    private ResultSet rs; // 실행된 결과를 돌려받을 때(Select구문만)
   
    public FirstServlet() {
        super();
     
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		DAO dao = new DAO(); // 데이터 베이스 연결을 환인하기 위해
		String sql = "select * from member";
		try {
			psmt = dao.conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while(rs.next()) {
				System.out.print(rs.getString("member_id"));
				System.out.println(rs.getString("member_name"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		String name = request.getParameter("name");
		PrintWriter out = response.getWriter(); //html 문서를 만드는 메소드
		if(!(name.isEmpty())) {
			out.print("넘어온 이름은 : ");
			out.print(name);
		}
		
		out.print("넘어온 아이디 값 : ");
		out.print(request.getParameter("id"));
		out.print("넘어온 패스워드 값 : ");
		out.print(request.getParameter("password"));
		}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
