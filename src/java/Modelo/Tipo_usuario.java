package Modelo;

public class Tipo_usuario {
    int idtipous;
    String titulotipous;

    public Tipo_usuario() {
    }

    public Tipo_usuario(int idtipous, String titulotipous) {
        this.idtipous = idtipous;
        this.titulotipous = titulotipous;
    }

    public int getIdtipous() {
        return idtipous;
    }

    public void setIdtipous(int idtipous) {
        this.idtipous = idtipous;
    }

    public String getTitulotipous() {
        return titulotipous;
    }

    public void setTitulotipous(String titulotipous) {
        this.titulotipous = titulotipous;
    }
    
    
}
