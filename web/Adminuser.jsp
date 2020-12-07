<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="d-flex">
            <div class="card col-sm-3">
                <div class="card-body">
                    <div class="form-group"> 
                        <form action="Controlador?menu=Adminuser" method="POST">                                       
                            <div class="form-group">
                                <input type="text" name="txtNombres" class="form-control" placeholder="nombres">
                            </div>
                            <div class="form-group">
                                <input type="text" name="txtApellido" class="form-control" placeholder="apellidos">
                            </div>
                            <div class="form-group">
                                <input type="text" name="txtCelular" class="form-control" placeholder="celular">
                            </div>
                            <div class="form-group">
                                <input type="text" name="txtCi" class="form-control" placeholder="ci">
                            </div>
                            <div class="form-group">
                                <input type="date" name="txtFnac" class="form-control" placeholder="fecha de nacimiento">
                            </div>
                            <div class="form-group">
                                <input type="text" name="txtDirec" class="form-control" placeholder="direccion">
                            </div>
                            <div class="form-group">
                                <input type="text" name="txtEmail" class="form-control" placeholder="email">
                            </div>
                            <div class="form-group">
                                <input type="text" name="txtClave" class="form-control" placeholder="clave">
                            </div>
                            <div class="form-group">
                                <input type="text" name="txtTipo" class="form-control" placeholder="tipo user">
                            </div>
                            <div class="form-group">
                                <input type="text" name="txtDepar" class="form-control" placeholder="departamento">
                            </div>
                            <input type="submit" name="accion" value="Agregar" class="btn btn-info">
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-sm-9">
                <div class="card">
                    <div class="card-body">

                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>Id</th>
                                    <th>Nombres</th>
                                    <th>Apellidos</th>
                                    <th>celular</th>
                                    <th>ci</th>
                                    <th>fenac</th>
                                    <th>direccion</th>
                                    <th>email</th>
                                    <th>clave</th>
                                    <th>tipouser</th>
                                    <th>departamento</th>
                                </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="us" items="${usuarios}">
                                <tr>
                                    <td>${us.getId()}</td>
                                    <td>${us.getNom()}</td>
                                    <td>${us.getApellido()}</td>
                                    <td>${us.getCel()}</td>
                                    <td>${us.getCi()}</td>
                                    <td>${us.getFnac()}</td>
                                    <td>${us.getDir()}</td>
                                    <td>${us.getEmail()}</td>
                                    <td>${us.getClave()}</td>
                                    <td>${us.getTipous()}</td>
                                    <td>${us.getTipodep()}</td>
                                    <td>
                                        <a>Editar</a>
                                        <a>Eliminar</a>
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
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    </body>
</html>
