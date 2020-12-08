<%-- 
    Document   : Contactos
    Created on : 24-nov-2020, 20:32:12
    Author     : Wil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="Controlador?menu=Perfil" method="POST">                                       
                            <div class="form-group">
                                <input type="text" value="${usuario.getNom()}" name="txtNombres" class="form-control" placeholder="nombres">
                            </div>
                            <div class="form-group">
                                <input type="text" value="${usuario.getApellido()}" name="txtApellido" class="form-control" placeholder="apellidos">
                            </div>
                            <div class="form-group">
                                <input type="text" value="${usuario.getCel()}" name="txtCelular" class="form-control" placeholder="celular">
                            </div>
                            <div class="form-group">
                                <input type="text" value="${usuario.getCi()}" name="txtCi" class="form-control" placeholder="ci">
                            </div>
                            <div class="form-group">
                                <input type="date" value="${usuario.getFnac()}" name="txtFnac" class="form-control" placeholder="fecha de nacimiento">
                            </div>
                            <div class="form-group">
                                <input type="text" value="${usuario.getDir()}" name="txtDirec" class="form-control" placeholder="direccion">
                            </div>
                            <div class="form-group">
                                <input type="text" value="${usuario.getEmail()}" name="txtEmail" class="form-control" placeholder="email">
                            </div>
                            <div class="form-group">
                                <input type="text" value="${usuario.getClave()}" name="txtClave" class="form-control" placeholder="clave">
                            </div>
                            <div class="form-group">
                                <input type="text" value="${usuario.getTipous()}" name="txtTipo" class="form-control" placeholder="tipo user">
                            </div>
                            <div class="form-group">
                                <input type="text" value="${usuario.getTipodep()}" name="txtDepar" class="form-control" placeholder="departamento">
                            </div>
                            <input type="submit" name="accion" value="Agregar" class="btn btn-info">
                            <input type="submit" name="accion" value="Actualizar" class="btn btn-success">
                        </form>
    </body>
</html>
