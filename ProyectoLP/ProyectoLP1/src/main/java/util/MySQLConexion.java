package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySQLConexion {
	
	public static Connection getConexion() {
		Connection cn = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost/gasolinera?useTimezone=true&serverTimezone=UTC";
			String usr = "root";
			String psw = "adrianfernando21";
			cn = DriverManager.getConnection(url, usr, psw);
			System.out.println("Conectado");
		} catch (ClassNotFoundException ex) {
			System.out.println("No hay Driver");
		} catch (SQLException ex) {
			System.out.println("Error con la BD");
		}
		return cn;
	}

	public static void closeConexion(Connection cn) {
		try {
			if (cn != null) {
				cn.close();
				System.out.println("Conexión Cerrada");
			}
		} catch (SQLException e) {
			System.out.println("Problemas al Cerrar la Conexión");
		}
	}
}
