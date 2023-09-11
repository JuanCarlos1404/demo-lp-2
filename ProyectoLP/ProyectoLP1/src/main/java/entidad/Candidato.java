package entidad;

public class Candidato {
    private String idCandidato;
    private String nombreCandidato;
    private String apellidoCandidato;
    private String edad;
    private String experiencia;
    
    public Candidato(String idCandidato, String nombreCandidato, String apellidoCandidato, String edad, String experiencia) {
        this.idCandidato = idCandidato;
        this.nombreCandidato = nombreCandidato;
        this.apellidoCandidato = apellidoCandidato;
        this.edad = edad;
        this.experiencia = experiencia;
    }
    
    public String getIdCandidato() {
        return idCandidato;
    }
    
    public void setIdCandidato(String idCandidato) {
        this.idCandidato = idCandidato;
    }
    
    public String getNombreCandidato() {
        return nombreCandidato;
    }
    
    public void setNombreCandidato(String nombreCandidato) {
        this.nombreCandidato = nombreCandidato;
    }
    
    public String getApellidoCandidato() {
        return apellidoCandidato;
    }
    
    public void setApellidoCandidato(String apellidoCandidato) {
        this.apellidoCandidato = apellidoCandidato;
    }
    
    public String getEdad() {
        return edad;
    }
    
    public void setEdad(String edad) {
        this.edad = edad;
    }
    
    public String getExperiencia() {
        return experiencia;
    }
    
    public void setExperiencia(String experiencia) {
        this.experiencia = experiencia;
    }
}

