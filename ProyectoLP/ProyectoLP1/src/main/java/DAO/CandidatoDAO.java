package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import entidad.Candidato;
import util.MySQLConexion;

public class CandidatoDAO {
		public static List<Candidato> listarCandidatos() throws Exception {
			List<Candidato> candidatos = new ArrayList<>();
			Connection con = null;
			Statement stat = null;
			ResultSet rst = null;

			try {
				con = MySQLConexion.getConexion();
				String sql = "select * from candidatos;";
				stat = con.createStatement();
				rst = stat.executeQuery(sql);
				while (rst.next()) {
					String idCandidato = rst.getString("id");
					String nombreCandidato = rst.getString("nombres");
					String apellidoCandidato = rst.getString("apellidos");
					String edad = rst.getString("edad");
					String experiencia = rst.getString("añosexperiencia");

					Candidato candidato = new Candidato(idCandidato, nombreCandidato, apellidoCandidato, edad, experiencia);
					candidatos.add(candidato);
				}
				rst.close();
				stat.close();
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return candidatos;
		}

public static void agregarCandidato(Candidato candidato) throws Exception {
	Connection con = null;
	PreparedStatement pst = null;
	try {
		con = MySQLConexion.getConexion();
		String query = "INSERT INTO candidatos (id, nombres, apellidos, edad, añosexperiencia) VALUES (?, ?, ?, ?, ?)";
		pst = con.prepareStatement(query);

		pst.setString(1, candidato.getIdCandidato());
		pst.setString(2, candidato.getNombreCandidato());
		pst.setString(3, candidato.getApellidoCandidato());
		pst.setString(4, candidato.getEdad());
		pst.setString(5, candidato.getExperiencia());

		pst.executeUpdate();
		pst.close();
	} catch (SQLException e) {
		e.printStackTrace();
	}
  } 

public static Candidato mostrarCandidato(String idCandidato) throws Exception {
	Candidato candidato = null;
	Connection con = null;
	PreparedStatement pst = null;
	ResultSet rst = null;

	try {
		con = MySQLConexion.getConexion();
		String query = "select * from candidatos WHERE id = ?";
		pst = con.prepareStatement(query);
		pst.setString(1, idCandidato);
		rst = pst.executeQuery();
		if (rst.next()) {
			String idCan = rst.getString("id");
			String nombreCandidato = rst.getString("nombres");
			String apellidoCandidato = rst.getString("apellidos");
			String edad = rst.getString("edad");
			String experiencia = rst.getString("añosexperiencia");

			candidato = new Candidato(idCan, nombreCandidato, apellidoCandidato, edad, experiencia);
		}

		rst.close();
		pst.close();
		con.close();
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return candidato;
 }

public static void actualizarCandidato(Candidato candidato) throws Exception {
	Connection con = null;
	PreparedStatement pst = null;
	try {
		con = MySQLConexion.getConexion();
		String query = "UPDATE candidatos SET nombres = ?, apellidos = ?, edad = ?, añosexperiencia = ? WHERE id = ?";
		pst = con.prepareStatement(query);

		pst.setString(1, candidato.getNombreCandidato());
		pst.setString(2, candidato.getApellidoCandidato());
		pst.setString(3, candidato.getEdad());
		pst.setString(4, candidato.getExperiencia());
		pst.setString(5, candidato.getIdCandidato());
		
		pst.executeUpdate();
		pst.close();
		con.close();
	} catch (SQLException e) {
		e.printStackTrace();
	}
}

public static void eliminarCandidato(String idCandidato) throws Exception {
	Connection con = null;
	PreparedStatement pst = null;
	try {
		con = MySQLConexion.getConexion();
		String query = "DELETE FROM candidatos WHERE id = ?";
		pst = con.prepareStatement(query);
		pst.setString(1, idCandidato);
		
		pst.executeUpdate();
		pst.close();
		con.close();
	} catch (SQLException e) {
		e.printStackTrace();
	}
}

}

