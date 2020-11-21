package Modelo;

public class Usuario {
    int id;
    String nom;
    String apellido;
    String cel;
    int ci;
    String fnac;
    String dir;
    String email;
    String clave;
    int tipous;
    int tipodep;

    public Usuario() {
    }

    public Usuario(int id, String nom, String apellido, String cel, int ci, String fnac, String dir, String email, String clave, int tipous, int tipodep) {
        this.id = id;
        this.nom = nom;
        this.apellido = apellido;
        this.cel = cel;
        this.ci = ci;
        this.fnac = fnac;
        this.dir = dir;
        this.email = email;
        this.clave = clave;
        this.tipous = tipous;
        this.tipodep = tipodep;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getCel() {
        return cel;
    }

    public void setCel(String cel) {
        this.cel = cel;
    }

    public int getCi() {
        return ci;
    }

    public void setCi(int ci) {
        this.ci = ci;
    }

    public String getFnac() {
        return fnac;
    }

    public void setFnac(String fnac) {
        this.fnac = fnac;
    }

    public String getDir() {
        return dir;
    }

    public void setDir(String dir) {
        this.dir = dir;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public int getTipous() {
        return tipous;
    }

    public void setTipous(int tipous) {
        this.tipous = tipous;
    }

    public int getTipodep() {
        return tipodep;
    }

    public void setTipodep(int tipodep) {
        this.tipodep = tipodep;
    }

    
}
