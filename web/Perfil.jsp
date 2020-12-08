<%-- 
    Document   : Acerca de
    Created on : 24-nov-2020, 20:32:21
    Author     : Wil
--%>
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
        <div class="container col-4">
            <div class="list-group">
                <a href="#" class="list-group-item list-group-item-action align-items-start">
                    <div class="d-flex w-100 justify-content-between">
                        <h6 class="mb-1">Nombre</h6>      
                    </div>
                    <small>${usuario.getNom()}<span>--</span>${usuario.getApellido()}</small>
                </a>
                <a href="#" class="list-group-item list-group-item-action align-items-start">
                    <div class="d-flex w-100 justify-content-between">
                        <h6 class="mb-1">Celular</h6>      
                    </div>
                    <small>${usuario.getCel()}</small>
                </a>
                <a href="#" class="list-group-item list-group-item-action align-items-start">
                    <div class="d-flex w-100 justify-content-between">
                        <h6 class="mb-1">Ci</h6>      
                    </div>
                    <small>${usuario.getCi()}</small>
                </a>
                <a href="#" class="list-group-item list-group-item-action align-items-start">
                    <div class="d-flex w-100 justify-content-between">
                        <h6 class="mb-1">Fecha de nacimiento</h6>      
                    </div>
                    <small>${usuario.getFnac()}</small>
                </a>
                <a href="#" class="list-group-item list-group-item-action align-items-start">
                    <div class="d-flex w-100 justify-content-between">
                        <h6 class="mb-1">Direccion</h6>      
                    </div>
                    <small>${usuario.getDir()}</small>
                </a>
                <a href="#" class="list-group-item list-group-item-action align-items-start">
                    <div class="d-flex w-100 justify-content-between">
                        <h6 class="mb-1">Correo electronico</h6>      
                    </div>
                    <small>${usuario.getEmail()}</small>
                </a>
                <a href="#" class="list-group-item list-group-item-action align-items-start">
                    <div class="d-flex w-100 justify-content-between">
                        <h6 class="mb-1">Tipo de usuario</h6>      
                    </div>
                    <small>${usuario.getTipous()}</small>
                </a>
                <a href="#" class="list-group-item list-group-item-action align-items-start">
                    <div class="d-flex w-100 justify-content-between">
                        <h6 class="mb-1">Departamento</h6>      
                    </div>
                    <small>${usuario.getTipodep()}</small>
                </a>                               
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    </body>
</html>
