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
                                    <th>Nombre Completo</th>
                                    <th>Celular</th>
                                    <th>Departamento</th>                                           <th>Tipo de usuario</th>    
                                </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="contacte" items="${contame}">
                                <tr>
                                    <td>${contacte.getNom_contac()}</td>                
                                    <td>${contacte.getCel_contac()}</td>                
                                    <td>${contacte.getTitulo_contac()}</td>                
                                    <td>${contacte.getTipous_contac()}</td>                
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
