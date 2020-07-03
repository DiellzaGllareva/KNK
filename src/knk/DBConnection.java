package knk;

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
<<<<<<< HEAD
				
=======
>>>>>>> 4f9678671d0ac1fb7fea92b85e01986852445f08
			} catch (Exception ex) {
				ex.printStackTrace();
			}
		}

		return dbConnection;
	}

}
