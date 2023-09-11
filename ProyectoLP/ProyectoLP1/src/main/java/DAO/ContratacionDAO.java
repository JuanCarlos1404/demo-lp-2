package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import entidad.Contratacion;
import util.MySQLConexion;

public class ContratacionDAO {

	public static List<Contratacion> listarContrataciones() throws Exception {
		List<Contratacion> contratos = new ArrayList<>();
		Connection con = null;
		Statement stat = null;
		ResultSet rst = null;

		try {
			con = MySQLConexion.getConexion();
			String sql = "select * from contrataciones;";
			stat = con.createStatement();
			rst = stat.executeQuery(sql);
			while (rst.next()) {
				String CodPracticante = rst.getString("CodPrac");
				String nombrePracticante = rst.getString("nombre");
				String telefono = rst.getString("telefono");
				String dni = rst.getString("dni");
				String area = rst.getString("area");

				Contratacion contrato = new Contratacion(CodPracticante, nombrePracticante, telefono, dni, area);
				contratos.add(contrato);
			}
			rst.close();
			stat.close();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return contratos;
	}

	public static void agregarContratacion(Contratacion contrato) throws Exception {
		Connection con = null;
		PreparedStatement pst = null;
		try {
			con = MySQLConexion.getConexion();
			String query = "INSERT INTO contrataciones (CodPrac, nombre, telefono, dni, area) VALUES (?, ?, ?, ?, ?)";
			pst = con.prepareStatement(query);

			pst.setString(1, contrato.getCodPracticante());
			pst.setString(2, contrato.getNombrePracticante());
			pst.setString(3, contrato.getTelefono());
			pst.setString(4, contrato.getDni());
			pst.setString(5, contrato.getArea());

			pst.executeUpdate();
			pst.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static Contratacion mostrarContrato(String CodPracticante) throws Exception {
		Contratacion contrato = null;
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rst = null;

		try {
			con = MySQLConexion.getConexion();
			String query = "select * from contrataciones WHERE CodPrac = ?";
			pst = con.prepareStatement(query);
			pst.setString(1, CodPracticante);
			rst = pst.executeQuery();
			if (rst.next()) {
				String cod = rst.getString("CodPrac");
				String nombre = rst.getString("nombre");
				String telefono = rst.getString("telefono");
				String dni = rst.getString("dni");
				String area = rst.getString("area");

				contrato = new Contratacion(cod, nombre, telefono, dni, area);
			}

			rst.close();
			pst.close();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return contrato;
	}

	public static void actualizarContratacion(Contratacion contrato) throws Exception {
		Connection con = null;
		PreparedStatement pst = null;
		try {
			con = MySQLConexion.getConexion();
			String query = "UPDATE contrataciones SET nombre = ?, telefono = ?, dni = ?, area = ? WHERE CodPrac = ?";
			pst = con.prepareStatement(query);

			pst.setString(1, contrato.getNombrePracticante());
			pst.setString(2, contrato.getTelefono());
			pst.setString(3, contrato.getDni());
			pst.setString(4, contrato.getArea());
			pst.setString(5, contrato.getCodPracticante());
			
			pst.executeUpdate();
			pst.close();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void eliminarContratacion(String CodPracticante) throws Exception {
		Connection con = null;
		PreparedStatement pst = null;
		try {
			con = MySQLConexion.getConexion();
			String query = "DELETE FROM contrataciones WHERE CodPrac = ?";
			pst = con.prepareStatement(query);
			pst.setString(1, CodPracticante);
			
			pst.executeUpdate();
			pst.close();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}