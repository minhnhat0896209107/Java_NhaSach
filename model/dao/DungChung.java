	package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DungChung {
	public  Connection cn;
	public  void ketNoi() throws Exception{
		 //;B1: Xac dinh hqtcsdl
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		System.out.println("Da xdhcsdl");
		cn = DriverManager.getConnection("jdbc:sqlserver://NHATNGUYEN\\SQLEXPRESS:1433;databaseName=NHASACH;user=sa;password=123456");
		System.out.println("Da ket noi");
	}
	

}
