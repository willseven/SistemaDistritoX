<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

        <link href="https://fonts.googleapis.com/css2?family=Ruluko&display=swap" rel="stylesheet">
        <title>JSP Page</title>
    </head>
    <body>
        <style>
               *{
               font-family: 'Ruluko';
           }
        
           .navbar-expand-lg{
               background:rgb(38, 38, 38 ) ;
           }
            footer {
                background-color:  rgb(  38, 38, 38 ) ;
                position: absolute;
                bottom: 0;
                width: 100%;
                height: 100px;
                color: white;
            }
            footer span{
                text-decoration: none;
                color: rgb(  255, 221, 67  );
                cursor: pointer;
            }
            @media screen and (max-width: 992px){
                footer{
                    position: relative;
                }
            }
        </style>
        <!--añadir un sidebar-->
        <nav class="navbar navbar-expand-lg navbar-dark">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Distrito X</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">               
                        <li class="nav-item">
                            <a  class="nav-link" href="Controlador?menu=Inicio" target="myFrame">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Controlador?menu=Tramitar&accion=Listar" target="myFrame">Gestor de tramites</a>
                        </li>                    
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Controlador?menu=Historial&accion=Listar" target="myFrame">Historial</a>
                        </li>                    
                        <li class="nav-item">
                            <a class="nav-link" href="Controlador?menu=Contactos&accion=Listar" target="myFrame">Contactos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Controlador?menu=Perfil&accion=Editar&id=${usuario.getId()}" target="myFrame">Mi perfil</a>
                        </li>





                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                ${usuario.getNom()}
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">                                
                                    <c:if test="${usuario.getTipous() == 1}">
                                    <li><a class="dropdown-item" href="Controlador?menu=Perfil&accion=Editar&id=${usuario.getId()}" target="myFrame"><img src="img/man.png" alt="60" width="60"/></a></li>
                                    </c:if>
                                    <c:if test="${usuario.getTipous() != 1}">
                                    <li><a class="dropdown-item" href="Controlador?menu=Perfil&accion=Editar&id=${usuario.getId()}" target="myFrame"><img src="img/profile-user.png" alt="60" width="60"/></a></li>
                                    </c:if>
                                    <hr class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="Controlador?menu=Perfil&accion=Editar&id=${usuario.getId()}" target="myFrame">${usuario.getNom()}</a></li>
                                    <c:if test="${usuario.getTipous() == 1}">
                                    <li><a class="dropdown-item" href="Controlador?menu=Adminuser&accion=Listar" target="myFrame">Administrar Usuarios</a></li>
                                    </c:if>
                                <li><hr class="dropdown-divider"></li>
                                <li>
                                    <form action="Validar" method="POST">
                                        <button name="accion" value="Salir" class="dropdown-item" href="#">Salir</button>
                                    </form>
                                </li>
                            </ul>
                        </li>        
                    </ul>                  
                </div>            
            </div>
        </ul>
    </nav>
    <div class="embed-responsives m-4" style="height: 550px;">
        <iframe class="embed-responsive-item" name="myFrame"  style="height: 100%; width: 100%; border: navy;"></iframe>
    </div>
    <footer class="footer-copyright">
        <div class="footer-copyright text-center py-3">© 2020 Copyright:
            <span> Wilson Condori Pairumani</span>
        </div>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>           </body>
</html>
