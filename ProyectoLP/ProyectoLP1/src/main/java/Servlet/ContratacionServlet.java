package Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

import DAO.ContratacionDAO;
import entidad.Contratacion;

/**
 * Servlet implementation class AlumnoServlet
 */
public class ContratacionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action = request.getParameter("action");

		if (action == null)
			action = "listar";

		switch (action) {
		case "listar":
			listarContrataciones(request, response);
			break;
		case "agregar":
			try {
				agregarContratacion(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			break;
		case "mostrar":
			try {
				mostrarContratacion(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			break;
		case "actualizar":
			try {
				actualizarContratacion(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			break;
		case "eliminar":
			try {
				eliminarContratacion(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			break;
		default:
			listarContrataciones(request, response);
			break;
		}
	}

	private void listarContrataciones(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			List<Contratacion> contratos = ContratacionDAO.listarContrataciones();
			request.setAttribute("contratos", contratos);
			request.getRequestDispatcher("listaContrataciones.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private void mostrarContratacion(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String CodPracticante = request.getParameter("CodPrac");
		Contratacion contrato = ContratacionDAO.mostrarContrato(CodPracticante);
		
		request.setAttribute("contrato", contrato);
		request.getRequestDispatcher("editarContratacion.jsp").forward(request, response);
	}

	private void agregarContratacion(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String CodPracticante = request.getParameter("CodPrac");
		String nombre = request.getParameter("nombre");
		String telefono = request.getParameter("telefono");
		String dni = request.getParameter("dni");
		String area = request.getParameter("area");

		Contratacion contrato = new Contratacion(CodPracticante, nombre, telefono, dni, area);
		ContratacionDAO.agregarContratacion(contrato);
		listarContrataciones(request, response);
	}

	private void actualizarContratacion(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String CodPracticante = request.getParameter("CodPrac");
		String nombre = request.getParameter("nombre");
		String telefono = request.getParameter("telefono");
		String dni = request.getParameter("dni");
		String area = request.getParameter("area");

		Contratacion contrato = new Contratacion(CodPracticante, nombre, telefono, dni, area);
		ContratacionDAO.actualizarContratacion(contrato);
		listarContrataciones(request, response);
	}

	private void eliminarContratacion(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String CodPracticante = request.getParameter("CodPrac");

		ContratacionDAO.eliminarContratacion(CodPracticante);
		listarContrataciones(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
