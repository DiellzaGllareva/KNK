package projekti;

import java.sql.*;

public class DBConnection {
	
	private static Connection dbConnection;

	private final static String host = "localhost";
	private final static String dbName = "projektiKNK";
	private final static String username = "root";
	private final static String password = "";

	public static Connection getConnection() {
		if (dbConnection == null) {
			try {
				Class.forName("com.mysql.jdbc.Driver");
				dbConnection = DriverManager.getConnection("jdbc:mysql://" + host + "/" + dbName, username, password);
				System.out.println("Databaza u konektua me sukses!");
			} catch (Exception ex) {
				ex.printStackTrace();
			}
		}

		return dbConnection;
	}

}
