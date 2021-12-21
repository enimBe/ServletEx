package common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class MysqlService {

	// 접속 주소, 아이디, 패스워드
	private String url;
	private String id;
	private String password;
	
	// 접속 관리 객체 
	private Connection conn;
	private Statement statement;
	
	public MysqlService() {
		this.url = "jdbc:mysql://localhost:3306/test_1126";
		this.id = "root";
		this.password = "root";
	}
	
	// 접속 기능
	public void connect() {
		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			this.conn = DriverManager.getConnection(this.url, this.id, this.password);
			this.statement = conn.createStatement();
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
	// 접속 끊기 기능
	public void diconnect() {
		try {
			this.statement.close();
			this.conn.close();
		} catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
	// select 쿼리 수행 기능
	public ResultSet select(String query) {
		try {
			return this.statement.executeQuery(query);
		} catch(SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	// insert, update, delete 쿼리 수행 기능
	public int update(String query) {
		try {
			return this.statement.executeUpdate(query);
		}catch (SQLException e) {
			e.printStackTrace();
			return 0;
		}
	}
	
	
	
	
	
}
