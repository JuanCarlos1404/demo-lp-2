package entidad;
import java.sql.Date;

public class Practicante {
	String codpracticante; 
	String nompracticante; 
	String apepracticante; 
	String dni; 
	String telefono; 
	String Direccion;
	String disponibildad;
	@Override
	public String toString() {
		return "Practicante [codpracticante=" + codpracticante + ", nompracticante=" + nompracticante
				+ ", apepracticante=" + apepracticante + ", dni=" + dni + ", telefono=" + telefono + ", Direccion="
				+ Direccion + ", disponibildad=" + disponibildad + "]";
	}
	public Practicante(String codpracticante, String nompracticante, String apepracticante, String dni, String telefono,
			String direccion, String disponibildad) {
		this.codpracticante = codpracticante;
		this.nompracticante = nompracticante;
		this.apepracticante = apepracticante;
		this.dni = dni;
		this.telefono = telefono;
		Direccion = direccion;
		this.disponibildad = disponibildad;
	}
	public Practicante(String nompracticante, String apepracticante, String dni, String telefono, String direccion,
			String disponibildad) {
		this.nompracticante = nompracticante;
		this.apepracticante = apepracticante;
		this.dni = dni;
		this.telefono = telefono;
		Direccion = direccion;
		this.disponibildad = disponibildad;
	}
	public String getCodpracticante() {
		return codpracticante;
	}
	public String getNompracticante() {
		return nompracticante;
	}
	public String getApepracticante() {
		return apepracticante;
	}
	public String getDni() {
		return dni;
	}
	public String getTelefono() {
		return telefono;
	}
	public String getDireccion() {
		return Direccion;
	}
	public String getDisponibildad() {
		return disponibildad;
	}
	public void setCodpracticante(String codpracticante) {
		this.codpracticante = codpracticante;
	}
	public void setNompracticante(String nompracticante) {
		this.nompracticante = nompracticante;
	}
	public void setApepracticante(String apepracticante) {
		this.apepracticante = apepracticante;
	}
	public void setDni(String dni) {
		this.dni = dni;
	}
	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}
	public void setDireccion(String direccion) {
		Direccion = direccion;
	}
	public void setDisponibildad(String disponibildad) {
		this.disponibildad = disponibildad;
	}
	
	
}
