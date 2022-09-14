package co.micol.prj.common;

import java.sql.Connection;
import java.sql.DriverManager;

public class DAO {
	private String driver = "oracle.jdbc.driver.OracleDriver";
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String user = "test";
	private String password = "1234";
	
	public Connection conn;
	
	public DAO() {
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url,user,password);
			System.out.println("연결성공");
		} catch (Exception e) {
			//e.printStackTrace();
			System.out.println("DB 연결실패!!!!!");
		}
	}
}
