<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css2?family=Ruluko&display=swap" rel="stylesheet">
    </head>
    <style>
        * {
    /* el tamaño por defecto es 14px */
    font-size: 14px;
    font-family: 'ruluko';
}
.yel-e{
    background: rgb(  255, 221, 67  );
    margin-bottom: 2px;
}
.yel-e:hover{
    background: rgb(38,38,38);
    color: rgba(255,255,255,.9);
}
.yel{
    display: block;
}
table th{
    background: rgb(  38, 38, 38 ) ;
    color: rgba(255,255,255,.6);
    border: 1px solid white;
    overflow: auto;
}
table td{
    border: 1px solid rgba(0,0,0,.2);
}
.col-sm-3{
    padding: 2px;
}
.col-sm-3 input[type=text], .col-sm-3 input[type=date]{
    border-radius: 2px;
    color:black;
    border:1px solid rgba(38,38,38,.3);
    padding: 3px 5px;
    margin:2px;
    font-size: 13px;
}
.btn-un{
    margin-bottom: 3px;
    background:    #2ecc71;
}
.btn-dos{
    background:   #cd6155;
}
.viper{
    display: block;
    width: 100%;
    color:white;
}
    </style>
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
                            <input type="submit" name="accion" value="Agregar" class="btn viper btn-un">
                            <input type="submit" name="accion" value="Actualizar" class="btn viper btn-dos">
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
                                    <th>Nombres</th>
                                    <th>Apellidos</th>
                                    <th>celular</th>
                                    <th>ci</th>
                                    <th>nacimiento</th>
                                    <th>direccion</th>
                                    <th>email</th>
                                    <th>clave</th>
                                    <th>tipo</th>
                                    <th>dep</th>
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
                                        <a class="btn yel yel-e" href="Controlador?menu=Adminuser&accion=Editar&id=${us.getId()}">Editar</a>
                                        <a class="btn btn-danger yel" href="Controlador?menu=Adminuser&accion=Delete&id=${us.getId()}">Eliminar</a>
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
