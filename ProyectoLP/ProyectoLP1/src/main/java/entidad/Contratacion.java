package entidad;

public class Contratacion {
    private String CodPracticante;
    private String nombrePracticante;
    private String telefono;
    private String dni;
    private String area;

    public Contratacion(String CodPracticante, String nombrePracticante, String telefono, String dni, String area) {
        this.CodPracticante = CodPracticante;
        this.nombrePracticante = nombrePracticante;
        this.telefono = telefono;
        this.dni = dni;
        this.area = area;
    }

    public void setCodPracticante(String CodPracticante) {
        this.CodPracticante = CodPracticante;
    }

    public String getCodPracticante() {
        return CodPracticante;
    }

    public void setNombrePracticante(String nombrePracticante) {
        this.nombrePracticante = nombrePracticante;
    }

    public String getNombrePracticante() {
        return nombrePracticante;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public String getDni() {
        return dni;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public String getArea() {
        return area;
    }
}
