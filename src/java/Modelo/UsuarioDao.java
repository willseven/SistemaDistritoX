package Modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class UsuarioDao {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;

    public Usuario validar(String nom, String clave) {
        Usuario us = new Usuario();
        String sql = "select * from usuario where nombres_usuario=? and clave_usuario=?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, nom);
            ps.setString(2, clave);
            rs = ps.executeQuery();
            while (rs.next()) {
                us.setId(rs.getInt("id_usuario"));
                us.setNom(rs.getString("nombres_usuario"));
                us.setClave(rs.getString("apellido_usuario"));
                us.setCel(rs.getString("celular_usuario"));
                us.setCi(rs.getInt("ci_usuario"));
                us.setFnac(rs.getString("fnac_usuario"));
                us.setDir(rs.getString("direccion_usuario"));
                us.setEmail(rs.getString("email_usuario"));
                us.setClave(rs.getString("clave_usuario"));
                us.setTipous(rs.getInt("usuario_tipouser"));
                us.setTipodep(rs.getInt("usuario_departamento"));
            }
        } catch (Exception e) {
        }
        return us;
    }
    
    //Operaciones CRUD
    
    public List listar(){
        String sql="select * from usuario";
        List<Usuario>lista=new ArrayList<>();
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                Usuario us=new Usuario();
                us.setId(rs.getInt("id_usuario"));
                us.setNom(rs.getString("nombres_usuario"));
                us.setClave(rs.getString("apellido_usuario"));
                us.setCel(rs.getString("celular_usuario"));
                us.setCi(rs.getInt("ci_usuario"));
                us.setFnac(rs.getString("fnac_usuario"));
                us.setDir(rs.getString("direccion_usuario"));
                us.setEmail(rs.getString("email_usuario"));
                us.setClave(rs.getString("clave_usuario"));
                us.setTipous(rs.getInt("usuario_tipouser"));
                us.setTipodep(rs.getInt("usuario_departamento"));
                lista.add(us);
            }
        } catch (Exception e) {
        }
        return lista;
    }
    public int agregar(Usuario us){ 
        String sql="insert into usuario(nombres_usuario, apellido_usuario,celular_usuario,ci_usuario, fnac_usuario, direccion_usuario, email_usuario, clave_usuario, usuario_tipouser, usuario_departamento)values(?,?,?,?,?,?,?,?,?,?)";
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            
                ps.setString(1, us.getNom());
                ps.setString(2, us.getApellido());
                ps.setString(3, us.getCel());
                ps.setInt(4, us.getCi());
                ps.setString(5, us.getFnac());
                ps.setString(6, us.getDir());
                ps.setString(7, us.getEmail());
                ps.setString(8, us.getClave());
                ps.setInt(9, us.getTipous());
                ps.setInt(10, us.getTipodep());
                
                ps.executeUpdate();
        } catch (Exception e) {
        }
        return r;
        
    }
    public Usuario listarId(int id){
        Usuario uss=new Usuario();
        String sql="select * from usuario where id_usuario="+id;
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                uss.setNom(rs.getString(2));
                uss.setApellido(rs.getString(3));
                uss.setCel(rs.getString(4));
                uss.setCi(rs.getInt(5));
                uss.setFnac(rs.getString(6));
                uss.setDir(rs.getString(7));
                uss.setEmail(rs.getString(8));
                uss.setClave(rs.getString(9));
                uss.setTipous(rs.getInt(10));
                uss.setTipodep(rs.getInt(11));
                
            }
        } catch (Exception e) {
        }
        return uss;
    }
    public int actualizar(Usuario us){
       String sql="update set nombres_usuario=?, apellido_usuario=?, celular_usuario=?, ci_usuario=?, fnac_usuario=?, direccion_usuario=?, email_usuario=?, clave_usuario=?, usuario_tipouser=?, usuario_departamento=? where id_usuario = ?";
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            
                ps.setString(1, us.getNom());
                ps.setString(2, us.getApellido());
                ps.setString(3, us.getCel());
                ps.setInt(4, us.getCi());
                ps.setString(5, us.getFnac());
                ps.setString(6, us.getDir());
                ps.setString(7, us.getEmail());
                ps.setString(8, us.getClave());
                ps.setInt(9, us.getTipous());
                ps.setInt(10, us.getTipodep());
                ps.setInt(11,us.getId());
                ps.executeUpdate();
        } catch (Exception e) {
        }
        return r;
    }
    public void delete(int id){
        String sql="delete from usuario where id_usuario="+id;
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
}
