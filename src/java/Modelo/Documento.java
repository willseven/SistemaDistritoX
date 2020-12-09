package Modelo;

public class Documento {
    int iddoc;
    String titulo_doc;
    String descripcion_doc;
    String tramitante;
    String fechain;
    int doc_dep;
    int doc_tipodoc;
    int doc_user;

    public Documento() {
    }

    public Documento(int iddoc, String titulo_doc, String descripcion_doc, String tramitante, String fechain, int doc_dep, int doc_tipodoc, int doc_user) {
        this.iddoc = iddoc;
        this.titulo_doc = titulo_doc;
        this.descripcion_doc = descripcion_doc;
        this.tramitante = tramitante;
        this.fechain = fechain;
        this.doc_dep = doc_dep;
        this.doc_tipodoc = doc_tipodoc;
        this.doc_user = doc_user;
    }

    public int getIddoc() {
        return iddoc;
    }

    public void setIddoc(int iddoc) {
        this.iddoc = iddoc;
    }

    public String getTitulo_doc() {
        return titulo_doc;
    }

    public void setTitulo_doc(String titulo_doc) {
        this.titulo_doc = titulo_doc;
    }

    public String getDescripcion_doc() {
        return descripcion_doc;
    }

    public void setDescripcion_doc(String descripcion_doc) {
        this.descripcion_doc = descripcion_doc;
    }

    public String getTramitante() {
        return tramitante;
    }

    public void setTramitante(String tramitante) {
        this.tramitante = tramitante;
    }

    public String getFechain() {
        return fechain;
    }

    public void setFechain(String fechain) {
        this.fechain = fechain;
    }

    public int getDoc_dep() {
        return doc_dep;
    }

    public void setDoc_dep(int doc_dep) {
        this.doc_dep = doc_dep;
    }

    public int getDoc_tipodoc() {
        return doc_tipodoc;
    }

    public void setDoc_tipodoc(int doc_tipodoc) {
        this.doc_tipodoc = doc_tipodoc;
    }

    public int getDoc_user() {
        return doc_user;
    }

    public void setDoc_user(int doc_user) {
        this.doc_user = doc_user;
    }
    

    

       
}
