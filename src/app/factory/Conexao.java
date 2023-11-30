package app.factory;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexao {
	private String driver = "com.mysql.jdbc.Driver";
	private String url = "jdbc:mysql://localhost/pilarsocial";
	private String usuario = "root";
	private String senha = "";
	
	public Connection getConexao() {
		try {
			Class.forName(driver);
			return DriverManager.getConnection(url, usuario, senha);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		
	}
}
