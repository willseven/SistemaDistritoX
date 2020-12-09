package Modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class DocumentoDao {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;
    //operaciones crud
    public List listar(){
        String sql="select * from documento";
        List<Documento>lista=new ArrayList<>();
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                Documento docu=new Documento();
                docu.setIddoc(rs.getInt("id_documento"));
                docu.setTitulo_doc(rs.getString("titulo_doc"));
                docu.setDescripcion_doc(rs.getString("descripcion_doc"));
                //docu.setFinicio_doc(rs.getString("finicio_doc"));
                docu.setDoc_dep(rs.getInt("documento_departamento"));   
                docu.setDoc_tipodoc(rs.getInt("documento_tipodoc"));
                docu.setDoc_user(rs.getInt("documento_usuario"));
                lista.add(docu);
            }
        } catch (Exception e) {
        }
        return lista;
    }
    
    public int agregar(Documento doc){ 
        String sql="insert into documento(titulo_doc, descripcion_doc, documento_departamento, documento_tipodoc, documento_usuario)values(?,?,?,?,?)";
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            
                ps.setString(1, doc.getTitulo_doc());
                ps.setString(2, doc.getDescripcion_doc());
                ps.setInt(3, doc.getDoc_dep());
                ps.setInt(4, doc.getDoc_tipodoc());
                ps.setInt(5, doc.getDoc_user());
                
                ps.executeUpdate();
        } catch (Exception e) {
        }
        return r;
        
    }
    public Documento listarId(int id){
        Documento docu=new Documento();
        String sql="select * from documento where id_documento="+id;
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                docu.setTitulo_doc(rs.getString(2));
                docu.setDescripcion_doc(rs.getString(3));
                //docu.setFinicio_doc(rs.getString(4));
                docu.setDoc_dep(rs.getInt(4));   
                docu.setDoc_tipodoc(rs.getInt(5));
                docu.setDoc_user(rs.getInt(6));               
                
            }
        } catch (Exception e) {
        }
        return docu;
    }
    
    public int actualizar(Documento docu){
       String sql="update documento set titulo_doc=?, descripcion_doc=?, documento_departamento=?, documento_tipodoc=?, documento_usuario=? where id_documento = ?";
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            
                ps.setString(1, docu.getTitulo_doc());
                ps.setString(2, docu.getDescripcion_doc());  
                ps.setInt(3, docu.getDoc_dep());
                ps.setInt(4, docu.getDoc_tipodoc());
                ps.setInt(5, docu.getDoc_user());
                ps.setInt(6, docu.getIddoc());
                ps.executeUpdate();
        } catch (Exception e) {
        }
        return r;
    }
    public void delete(int id){
        String sql="delete from documento where id_documento="+id;
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
}
