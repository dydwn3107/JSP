package co.micol.prj.common;

import java.sql.Connection;
import java.sql.DriverManager;

// DAO Class
public class DataSource {
	
	private String driver = "oracle.jdbc.driver.OracleDriver";
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String user = "test";
	private String password = "1234";
	public Connection conn;
	
	public DataSource() {
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, password);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
