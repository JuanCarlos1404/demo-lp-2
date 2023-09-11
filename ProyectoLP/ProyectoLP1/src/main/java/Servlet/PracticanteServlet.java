package Servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.List;
import entidad.Practicante;
import DAO.PracticanteDAO;


public class PracticanteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
private PracticanteDAO gestPracticante;
public void init() throws ServletException {
	super.init();
	try {
		gestPracticante = new PracticanteDAO();
	} catch (Exception e) {
		throw new ServletException(e);
	}}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String elComando = request.getParameter("Instruccion");
		
		if (elComando ==null) elComando = "listar";
		switch (elComando) {
		case "listar":
			obtenerPracticante(request,response);
			break;
			case"insertarbd":	
			nuevoPracticante(request,response);
			break;
			
		    case"cargar":	
		    try {
				cargarPracticante(request,response);
				} catch (Exception e) {
				e.printStackTrace();
				}
		    break;
		   
           case"actualizarbd":	
		   try {
		 	actualizarPracticante(request,response);
			} catch (Exception e) {
			e.printStackTrace();
			}
			break;
       	    case "eliminar":
			try {
				eliminarPracticante(request, response);
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			break;
			
			default:
			obtenerPracticante(request,response);	
			break;
		}
		
		
		
		
	}

	private void eliminarPracticante(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String codigoPracticante = request.getParameter("cPracticante");
		gestPracticante.ElimminarPracticante(codigoPracticante);
		obtenerPracticante(request, response);
		
	}

	private void actualizarPracticante(HttpServletRequest request, HttpServletResponse response) throws Exception{
		 String codprac = request.getParameter("codigopracticante");
		 String nombrepract = request.getParameter("txtNombre");
		 String apepracticante = request.getParameter("txtApellido");
		 String dni = request.getParameter("txtDNI");
		 String telefono = request.getParameter("txtTelefono");
		 String direcpract = request.getParameter("txtDirecc");
		 String disponibilidad = request.getParameter("txtDisponibilidad");
		
		 Practicante PracticanteActualizado = new Practicante(codprac, nombrepract, apepracticante, dni, telefono,direcpract,disponibilidad);	
		gestPracticante.Practicanteactualizado(PracticanteActualizado);
		obtenerPracticante(request,response);
		
	}

	private void cargarPracticante(HttpServletRequest request, HttpServletResponse response)  throws Exception{
		String codigoPracticante = request.getParameter("cPracticante");
		Practicante LsPracticantes= gestPracticante.Practicantecargar(codigoPracticante);
		request.setAttribute("actPracticante", LsPracticantes);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/ActualizrRegistroPracticante.jsp");
		dispatcher.forward(request, response);
		
	}

	private void nuevoPracticante(HttpServletRequest request, HttpServletResponse response){
		 String codprac = request.getParameter("codigopracticante");
		 String nombrepract = request.getParameter("txtNombre");
		 String apepracticante = request.getParameter("txtApellido");
		 String dni = request.getParameter("txtDNI");
		 String telefono = request.getParameter("txtTelefono");
		 String direcpract = request.getParameter("txtDirecc");
		 String disponibilidad = request.getParameter("txtDisponibilidad");
		
		 Practicante nuevoPracticante = new Practicante(codprac, nombrepract, apepracticante, dni, telefono,direcpract,disponibilidad);		  
		 gestPracticante.agregarPracticanteNuevo(nuevoPracticante);		 
		 obtenerPracticante(request,response);
		
	}

	private void obtenerPracticante(HttpServletRequest request, HttpServletResponse response) {
		 List<Practicante> practicante;
		 try {
		 practicante=gestPracticante.getPracticantes();
		 request.setAttribute("LISTPRACTICANTE",practicante);
		 RequestDispatcher miDispatcher=request.getRequestDispatcher("ListadoPracticante.jsp");
		 miDispatcher.forward(request, response);

		 }catch(Exception e) {

		 e.printStackTrace();

		 }
		
	}

}
