<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css2?family=Ruluko&display=swap" rel="stylesheet">
        <title>JSP Page</title>
    </head>
    <style>
        *{
            font-family: 'Ruluko';
        }
       
.header{
    background-color:  rgb( 38, 38, 38  );
    color:white;
    padding: 50px;
}
.header h1{
    font-size:40px;
}
.btn-block{
    background:  rgb(  255, 221, 67  );
}
.btn-block:hover{
    background: rgb(  38, 38, 38 ) ;
    color:white;
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
    </style>
    <body>
        <div class="header">
            <h1>Distrito X</h1>
        </div>
        <div class="container mt-5 col-lg-4">
            <div class="card">
                <div class="card-body">
                    <form class="form-sign" action="Validar" method="POST">
                        <div class="form-group text-center">             
                            <label>Bienvenido al sistema de autentificacion del Distrito X</label>
                        </div>
                        <div class="form-group">
                            <label>Usuario:</label>
                            <input type="text" name="txtuser" value="" class="form-control" placeholder="Escribe tu nombre de usuario">
                        </div>
                        <div class="form-group">
                            <label>Password:</label>
                            <input type="password" name="txtpass" value="" class="form-control" placeholder="introduce tu clave">
                        </div>
                        <input type="submit" name="accion" value="Ingresar" class="btn btn-block">
                    </form>
                </div>
            </div>
        </div>

</table>
<footer class="footer-copyright">
  <div class="footer-copyright text-center py-3">© 2020 Copyright:
    <span> Wilson Condori Pairumani</span>
  </div>
</footer>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>        
    </body>
</html>
