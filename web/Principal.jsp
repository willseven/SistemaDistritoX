<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
         <style>
        .nav-item.current_page_item>a {
    /* el tamaño por defecto es 14px */
        background: red;
}
    </style>
        <!--añadir un sidebar-->
        <nav class="navbar navbar-expand-md navbar-light bg-info">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav float-right">
                    <li class="nav-item">                      
                        <img src="img/logo5.png" alt="" width="70"/>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 10px; border: none;" class="btn btn-outline-light" href="Controlador?menu=Inicio" target="myFrame">Inicio</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 10px; border: none;" class="btn btn-outline-light" href="Controlador?menu=Tramitar&accion=ListarDoc&id=${usuario.getId()}" target="myFrame">Tramitar</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 10px; border: none;" class="btn btn-outline-light" href="Controlador?menu=Tramitar&accion=Listar" target="myFrame">Tramitar 2</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 10px; border: none;" class="btn btn-outline-light" href="Controlador?menu=Historial" target="myFrame">Historial</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 10px; border: none;" class="btn btn-outline-light" href="Controlador?menu=Contactos&accion=Editar&id=${usuario.getId()}" target="myFrame">Contactos</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 10px; border: none;" class="btn btn-outline-light" href="Controlador?menu=Perfil&accion=Editar&id=${usuario.getId()}" target="myFrame">Mi perfil</a>
                    </li>

                </ul>                  
            </div>

            <div class="btn-group">
                <button style="border: none;" type="button" class="btn btn-outline-light dropdown-toggle" data-toggle="dropdown" data-display="static" aria-haspopup="true" aria-expanded="false">
                    ${usuario.getNom()}
                </button>
                <div class="dropdown-menu dropdown-menu-lg-right dropdown-menu-sm-right text-center">
                    <a href="Controlador?menu=Perfil&accion=Listar" target="myFrame"><img src="img/user.png" alt="60" width="60"/></a>
                    <a class="dropdown-item" href="Controlador?menu=Perfil&accion=Editar&id=${usuario.getId()}" target="myFrame">${usuario.getNom()}</a>
                    <c:if test="${usuario.getTipous() == 1}">
                    <a class="dropdown-item" href="Controlador?menu=Adminuser&accion=Listar" target="myFrame">Administrar usuarios</a>
                    </c:if>
                    
                    <div class="dropdown-divider"></div>
                    <form action="Validar" method="POST">
                        <button name="accion" value="Salir" class="dropdown-item" href="#">Salir</button>
                    </form>
                </div>
            </div>

        </nav>
        <div class="embed-responsives m-4" style="height: 600px;">
            <iframe class="embed-responsive-item" name="myFrame"  style="height: 100%; width: 100%; border: navy;"></iframe>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    </body>
</html>
