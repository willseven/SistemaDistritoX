package Modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class ContactoDao {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;
    //operaciones crud
    public List listar(){
        String sql="select nombres_usuario, celular_usuario, titulo_dep,titulo_tipouser from usuario INNER JOIN departamento on usuario_departamento=id_departamento INNER JOIN tipo_usuario on usuario_tipouser=id_tipo_usuario";
        List<Contacto>lista=new ArrayList<>();
        try {

            
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                Contacto conta=new Contacto();                
                conta.setNom_contac(rs.getString("nombres_usuario"));
                conta.setCel_contac(rs.getString("celular_usuario"));
                conta.setTitulo_contac(rs.getString("titulo_dep"));
                conta.setTipous_contac(rs.getString("titulo_tipouser"));
                
                lista.add(conta);
            }
        } catch (Exception e) {
        }
        return lista;
    }
    
    
    }

