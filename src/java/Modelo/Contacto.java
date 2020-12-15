package Modelo;

public class Contacto {
    String nom_contac;
    String cel_contac;
    String titulo_contac;
    String tipous_contac;

    public Contacto() {
    }

    public Contacto(String nom_contac, String cel_contac, String titulo_contac, String tipous_contac) {
        this.nom_contac = nom_contac;
        this.cel_contac = cel_contac;
        this.titulo_contac = titulo_contac;
        this.tipous_contac = tipous_contac;
    }

    public String getNom_contac() {
        return nom_contac;
    }

    public void setNom_contac(String nom_contac) {
        this.nom_contac = nom_contac;
    }

    public String getCel_contac() {
        return cel_contac;
    }

    public void setCel_contac(String cel_contac) {
        this.cel_contac = cel_contac;
    }

    public String getTitulo_contac() {
        return titulo_contac;
    }

    public void setTitulo_contac(String titulo_contac) {
        this.titulo_contac = titulo_contac;
    }

    public String getTipous_contac() {
        return tipous_contac;
    }

    public void setTipous_contac(String tipous_contac) {
        this.tipous_contac = tipous_contac;
    }

   
    
}
