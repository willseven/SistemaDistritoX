<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    </head>
    <body>
<div class="d-flex">
            <div class="card col-sm-3">
                <div class="card-body">
                    <div class="form-group"> 
                        <form action="Controlador?menu=Adminuser" method="POST">                                       
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
                    </div>
                </div>
            </div>
            <div class="col-sm-9 font-">
                <div class="card">
                    <div class="card-body">

                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>Id</th>
                                    <th>Titulo</th>
                                    <th>Descripcion</th>
                                    <th>Fecha de envio</th>
                                    <th>departamento</th>
                                    <th>tipo de documento</th>
                                    <th>usuario quien envio</th>                       
                                </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="doc" items="${document}">
                                <tr>
                                    <td>${doc.getIddoc()}</td>
                                    <td>${doc.getTitulo_doc()}</td>
                                    <td>${doc.getDescripcion_doc()}</td>
                                    <td>${doc.getFinicio_doc()}</td>
                                    <td>${doc.getDoc_dep()}</td>
                                    <td>${doc.getDoc_tipodoc()}</td>
                                    <td>${doc.getDoc_user()}</td>
                                    <td>
                                        <a class="btn btn-warning" href="Controlador?menu=Tramitar&accion=Editar&id=${doc.getIddoc()}">Editar</a>
                                        <a class="btn btn-danger" href="Controlador?menu=Tramitar&accion=Delete&id=${doc.getIddoc()}">Eliminar</a>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>

                    </div>
                </div>
            </div>


        </div>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>    </body>
</html>
