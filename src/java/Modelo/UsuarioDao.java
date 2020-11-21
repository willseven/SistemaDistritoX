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
    
    /*public List listar(){
        String sql="select * from usuario";
        List<Usuario>lista=new ArrayList<>();
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                Empleado em=new Empleado();
                em.setId(rs.getInt(1));
                em.setDni(rs.getString(2));
                em.setNom(rs.getString(3));
                em.setTel(rs.getString(4));
                em.setEstado(rs.getString(5));
                em.setUser(rs.getString(6));
                lista.add(em);
            }
        } catch (Exception e) {
        }
        return lista;
    }
    public int agregar(Empleado em){ 
        String sql="insert into empleado(Dni, Nombres, Telefono,Estado,User)values(?,?,?,?,?)";
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setString(1, em.getDni());
            ps.setString(2, em.getNom());
            ps.setString(3, em.getTel());
            ps.setString(4, em.getEstado());
            ps.setString(5, em.getUser());
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return r;
        
    }
    public Empleado listarId(int id){
        Empleado emp=new Empleado();
        String sql="select * from empleado where IdEmpleado="+id;
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                emp.setDni(rs.getString(2));
                emp.setNom(rs.getString(3));
                emp.setTel(rs.getString(4));
                emp.setEstado(rs.getString(5));
                emp.setUser(rs.getString(6));
            }
        } catch (Exception e) {
        }
        return emp;
    }
    public int actualizar(Empleado em){
        String sql="update empleado set Dni=?, Nombres=?, Telefono=?,Estado=?,User=? where IdEmpleado=?";
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setString(1, em.getDni());
            ps.setString(2, em.getNom());
            ps.setString(3, em.getTel());
            ps.setString(4, em.getEstado());
            ps.setString(5, em.getUser());
            ps.setInt(6, em.getId());
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return r;
    }
    public void delete(int id){
        String sql="delete from empleado where IdEmpleado="+id;
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }*/
}
