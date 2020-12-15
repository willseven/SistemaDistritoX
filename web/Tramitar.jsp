<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css2?family=Ruluko&display=swap" rel="stylesheet">
    </head>
    <style>
        * {
    /* el tamaño por defecto es 14px */
    font-size: 14px;
    font-family: ruluko;
}
.yeelo{
    background: rgb(  255, 221, 67  );
}
.yeelo:hover{
    background: rgb(38,38,38);
    color: rgba(255,255,255,.9);
}
table th{
    background: rgb(  38, 38, 38 ) ;
    color: rgba(255,255,255,.6);
    border: 1px solid white;
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
.viper:hover{
    background: rgb(38,38,38);
    color:white;
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
                            <input type="submit"  name="accion" value="Agregar" class="btn viper btn-un">
                            <input type="submit"  name="accion" value="Actualizar" class="btn viper btn-dos">
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
                                    <th>#</th>
                                    <th>Titulo</th>
                                    <th style="display:none;">Descripcion</th>       
                                    <th>Tramitante</th>       
                                    <th>Fecha inicio</th>       
                                    <th>Dep</th>
                                    <th>Tipo</th>
                                    <th style="display:none;">Encargado</th>                       
                                    <th style="display:none;">Estado</th>                       
                                </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="doc" items="${document}">
                                <tr>
                                    <td>${doc.getIddoc()}</td>
                                    <td>${doc.getTitulo_doc()}</td>
                                    <td style="display:none;">${doc.getDescripcion_doc()}</td>                                  
                                    <td>${doc.getTramitante()}</td>                                  
                                    <td>${doc.getFechain()}</td>                                  
                                    <td>${doc.getDoc_dep()}</td>
                                    <td>${doc.getDoc_tipodoc()}</td>
                                    <td style="display:none;">${doc.getDoc_user()}</td>
                                    <td style="display:none;">${doc.getEstado()}</td>
                                    <td>
                                        <a class="btn yeelo" href="Controlador?menu=Tramitar&accion=Editar&id=${doc.getIddoc()}">Editar</a>
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
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script> 
    </body>
</html>
