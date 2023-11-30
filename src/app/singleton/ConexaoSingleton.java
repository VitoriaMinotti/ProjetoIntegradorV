package app.singleton;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexaoSingleton {
	private static ConexaoSingleton instancia;
	private String driver = "com.mysql.jdbc.Driver";
	private String url = "jdbc:mysql://localhost/pilarsocial";
	private String usuario = "root";
	private String senha = "";
	
	public static synchronized ConexaoSingleton getInstancia() {
		if(instancia == null) {
			instancia = new ConexaoSingleton();	
		}
		return instancia;
	}
	public Connection getConexao() {
		try{
			Class.forName(driver);
			return DriverManager.getConnection(url, usuario, senha);
	} catch (ClassNotFoundException | SQLException e) {
		e.printStackTrace();
		return null;
	}
		
	}
	

}
