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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

        <link href="https://fonts.googleapis.com/css2?family=Ruluko&display=swap" rel="stylesheet">
    </head>
    <style>
        
               *{
               font-family: 'Ruluko';
           }
           small{
               padding: 2px 5px;
               color:rgba(0,0,0,.8);
               display:block;
               border-radius: 1.5px;
               border:1px solid rgba(38,38,38,.3);
           }
    </style>
    <body>        
        <div class="container col-4">
            <div class="list-group">
                <a href="#" class="list-group-item list-group-item-action align-items-start">
                    <div class="d-flex w-100 justify-content-between">
                        <h6 class="mb-1">Nombre</h6>      
                    </div>
                    <small>${usuario.getNom()}&nbsp;${usuario.getApellido()}</small>
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
                    
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script> 
    </body>
</html>
