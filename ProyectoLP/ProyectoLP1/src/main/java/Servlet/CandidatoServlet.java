package Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

import DAO.CandidatoDAO;
import entidad.Candidato;

/**
 * Servlet implementation class CandidatoServlet
 */
public class CandidatoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action = request.getParameter("action");

		if (action == null)
			action = "listar";

		switch (action) {
		case "listar":
			   listarCandidatos(request, response);
			break;
		case "agregar":
			try {
				agregarCandidato(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			break;
		case "mostrar":
			try {
				mostrarCandidato(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			break;
		case "actualizar":
			try {
				actualizarCandidato(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			break;
		case "eliminar":
			try {
				eliminarCandidato(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			break;
		default:
			listarCandidatos(request, response);
			break;
		}
	}

private void listarCandidatos(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	try {
		List<Candidato> candidatos = CandidatoDAO.listarCandidatos();
		request.setAttribute("candidatos", candidatos);
		request.getRequestDispatcher("listaCandidatos.jsp").forward(request, response);
	} catch (Exception e) {
		e.printStackTrace();
	}
}

private void mostrarCandidato(HttpServletRequest request, HttpServletResponse response) throws Exception {
	String idCandidato = request.getParameter("id");
	Candidato candidato = CandidatoDAO.mostrarCandidato(idCandidato);
	
	request.setAttribute("candidato", candidato);
	request.getRequestDispatcher("editarCandidato.jsp").forward(request, response);
}

private void agregarCandidato(HttpServletRequest request, HttpServletResponse response) throws Exception {
	String idCandidato = request.getParameter("id");
	String nombreCandidato = request.getParameter("nombres");
	String apellidoCandidato = request.getParameter("apellidos");
	String edad = request.getParameter("edad");
	String experiencia = request.getParameter("añosexperiencia");

	Candidato candidato = new Candidato(idCandidato, nombreCandidato, apellidoCandidato, edad, experiencia);
	CandidatoDAO.agregarCandidato(candidato);
	listarCandidatos(request, response);
}

private void actualizarCandidato(HttpServletRequest request, HttpServletResponse response) throws Exception {
	String idCandidato = request.getParameter("id");
	String nombreCandidato = request.getParameter("nombres");
	String apellidoCandidato = request.getParameter("apellidos");
	String edad = request.getParameter("edad");
	String experiencia = request.getParameter("añosexperiencia");

	Candidato candidato = new Candidato(idCandidato, nombreCandidato, apellidoCandidato, edad, experiencia);
	CandidatoDAO.actualizarCandidato(candidato);
	listarCandidatos(request, response);
}

private void eliminarCandidato(HttpServletRequest request, HttpServletResponse response) throws Exception {
	String idCandidato = request.getParameter("id");

	CandidatoDAO.eliminarCandidato(idCandidato);
	listarCandidatos(request, response);
}

protected void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
	doGet(request, response);
 }
}
