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
table th{
    background: rgb(  38, 38, 38 ) ;
    color: rgba(255,255,255,.6);
    border: 1px solid white;
}
table td{
    border: 1px solid rgba(0,0,0,.2);
}
    </style>
    <body>
<div class="d-flex">            
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-body">

                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Titulo</th>
                                    <th>Descripcion</th>       
                                    <th>Tramitante</th>       
                                    <th>Fecha inicio</th>       
                                    <th>Dep</th>
                                    <th>Tipo</th>
                                    <th>Encargado</th>                       
                                    <th>Estado</th>                       
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
