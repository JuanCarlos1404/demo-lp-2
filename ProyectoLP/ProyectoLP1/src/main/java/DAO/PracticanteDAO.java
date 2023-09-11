package DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import entidad.Practicante;
import util.MySQLConexion;

public class PracticanteDAO {

	public List<Practicante> getPracticantes() throws Exception{
		List<Practicante> practicantes =new ArrayList<>();
		Connection miConexion = null;
		Statement miStatement = null;
		ResultSet mResultSet = null;
		
		miConexion = MySQLConexion.getConexion();
		
		String instruccionesSQl = "select * from practicante";
		miStatement = miConexion.createStatement();
		
		mResultSet = miStatement.executeQuery(instruccionesSQl);
		
		while (mResultSet.next()) {
			String codpract = mResultSet.getString("codpract"); 
			String nompract = mResultSet.getString("nombrepract");
			String apepract = mResultSet.getString("apellidopract");
			String dni = mResultSet.getString("dnipract");
			String telefono  = mResultSet.getString("fonopract");
			String direcpract = mResultSet.getString("direcpract");
			String dispDate = mResultSet.getString("disponabilidad");
			Practicante temppracticante = new Practicante(codpract, nompract, apepract, dni, telefono,direcpract,dispDate);
			practicantes.add(temppracticante);
	     }
		return practicantes;			
	}

	public void agregarPracticanteNuevo(Practicante nuevoPracticante) {
		Connection miConexion = null;
		PreparedStatement miStatement = null;
		
		try {
			miConexion = MySQLConexion.getConexion();
			
			String SQL = "insert practicante values (?,?,?,?,?,?,?)";                           
					miStatement =miConexion.prepareStatement(SQL);
					
					miStatement.setString(1, nuevoPracticante.getCodpracticante());
					miStatement.setString(2, nuevoPracticante.getNompracticante());
					miStatement.setString(3, nuevoPracticante.getApepracticante());
					miStatement.setString(4, nuevoPracticante.getDni());
					miStatement.setString(5, nuevoPracticante.getTelefono());
					miStatement.setString(6, nuevoPracticante.getDireccion());
					miStatement.setString(7, nuevoPracticante.getDisponibildad());
					
					miStatement.execute();					
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}

	public Practicante Practicantecargar(String codigoPracticante) {
		Practicante losPracticantes =null;
		Connection miConnection = null;
		PreparedStatement miStatement = null;
		ResultSet mResultSet =null;
		String cPracticanteN = codigoPracticante;
		try {
			miConnection = MySQLConexion.getConexion();
			String sql ="Select * from practicante where codpract=?";
			miStatement = miConnection.prepareStatement(sql);
			miStatement.setString(1, cPracticanteN);
			mResultSet = miStatement.executeQuery();
			if(mResultSet.next() ) {
				String codPracticante = mResultSet.getString("codpract"); 
				String nombrePracticante = mResultSet.getString("nombrepract");
				String ApePracticante = mResultSet.getString("apellidopract");
				String Dni = mResultSet.getString("dnipract");
				String Telefono  = mResultSet.getString("fonopract");	
				String DireccionPrac  = mResultSet.getString("direcpract");
				String Disponibilidad  = mResultSet.getString("disponabilidad");
				losPracticantes = new Practicante(codPracticante,nombrePracticante, ApePracticante, Dni, Telefono, DireccionPrac,Disponibilidad);
			} else {
				throw new Exception("No se encontro Practicante" + cPracticanteN);
			}
				
		} catch (Exception e) {
			// TODO: handle exception
		}
			
			return losPracticantes;
}

	public void Practicanteactualizado(Practicante practicanteActualizado) throws Exception{
		Connection miConnection =null;
		PreparedStatement miStatement =null;
		
		miConnection = MySQLConexion.getConexion();
		String sql = "UPDATE practicante SET nombrepract=?, apellidopract=?, dnipract=?, fonopract=?, direcpract=?, disponabilidad=? where codpract=?";
		miStatement= miConnection.prepareStatement(sql);
		miStatement.setString(1, practicanteActualizado.getNompracticante());
		miStatement.setString(2, practicanteActualizado.getApepracticante());
		miStatement.setString(3, practicanteActualizado.getDni());
		miStatement.setString(4, practicanteActualizado.getTelefono());
		miStatement.setString(5, practicanteActualizado.getDireccion());
		miStatement.setString(6, practicanteActualizado.getDisponibildad());
		miStatement.setString(7, practicanteActualizado.getCodpracticante());
		miStatement.execute();
	}

	public void ElimminarPracticante(String codigoPracticante) throws Exception{
		Connection miconexion =null;
		PreparedStatement miStatement = null;
		miconexion = MySQLConexion.getConexion();
		String sql = "DELETE FROM practicante WHERE codpract=?";
		
		miStatement = miconexion.prepareStatement(sql);
		miStatement.setString(1, codigoPracticante);
		miStatement.execute();
		
	}


	}