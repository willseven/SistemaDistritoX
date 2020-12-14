<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    </head>
    <style>
        * {
    /* el tamaño por defecto es 14px */
    font-size: 13px;
}
    </style>
    <body>
<div class="d-flex">
            <div class="card col-sm-3">
                <div class="card-body">
                    <div class="form-group"> 
                        <form action="Controlador?menu=Tramitar" method="POST">                            
<div class="form-group">
    <input type="text" value="${documento.getTitulo_doc()}" name="txtTitulo" class="form-control" placeholder="titulo">                              
                            </div>
                            <div class="form-group">
                                <input type="text" value="${documento.getDescripcion_doc()}" name="txtDescripcion" class="form-control" placeholder="Descripcion">
                            </div>
                            <div class="form-group">
                                <input type="text" value="${documento.getTramitante()}" name="txtTramitante" class="form-control" placeholder="tramitante">
                            </div>
                            <div class="form-group">
                                <input type="text" value="${documento.getFechain()}" name="txtFechain" class="form-control" placeholder="fecha inicio">
                            </div>
                            <div class="form-group">
                                <input type="text" value="${documento.getDoc_dep()}"  name="txtDepartamento" class="form-control" placeholder="Departamento">
                            </div>
                            <div class="form-group">
                                <input type="text" value="${documento.getDoc_tipodoc()}"  name="txtTipodoc" class="form-control" placeholder="Tipo de documento">
                            </div>
                            <div class="form-group">
                                <input type="text" value="${documento.getDoc_user()}"  name="txtUser" class="form-control" placeholder="id de usuario">
                            </div>
                            <div class="form-group">
                                <input type="text" value="${documento.getEstado()}"  name="txtEstado" class="form-control" placeholder="estado">
                            </div> 
                            <input type="submit"  name="accion" value="Agregar" class="btn btn-info">
                            <input type="submit"  name="accion" value="Actualizar" class="btn btn-success">
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
                                    <th>tramitante</th>       
                                    <th>fecha inicio</th>       
                                    <th>departamento</th>
                                    <th>tipo de documento</th>
                                    <th>usuario quien envio</th>                       
                                    <th>estado</th>                       
                                </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="doc" items="${document}">
                                <tr>
                                    <td>${doc.getIddoc()}</td>
                                    <td>${doc.getTitulo_doc()}</td>
                                    <td>${doc.getDescripcion_doc()}</td>                                  
                                    <td>${doc.getTramitante()}</td>                                  
                                    <td>${doc.getFechain()}</td>                                  
                                    <td>${doc.getDoc_dep()}</td>
                                    <td>${doc.getDoc_tipodoc()}</td>
                                    <td>${doc.getDoc_user()}</td>
                                    <td>${doc.getEstado()}</td>
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
