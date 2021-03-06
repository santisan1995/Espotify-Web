<%@page import="dataType.DtCliente"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="./../css/estilos.css" media="screen" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Home</title>
        <style>
            header{
                background: #2c3e50;
                color:#fff;
            }
            footer{
                background: #2c3e50;
                color:#fff;
            }
            .boton{
                background: #79A4CF;
                border: none; /* Remove borders */
                color: white; /* Add a text color */
                padding: 14px 28px; /* Add some padding */
                cursor: pointer; /* Add a pointer cursor on mouse-over */
            }
            .boton:hover{background:#2c3e50 }
            .nodomenu{
                list-style: none;
                padding: 0;
            }
            .nodomenu a li{
                background: #2c3e50;
                padding: 5px;
                margin: 0 0 1px 0;
            }
            .nodomenu a li:hover{
                background: #213141;
            }
            .nodomenu a{
                color: aliceblue;
                text-decoration: none;
            }
        </style>
    </head>
    <body>
        <header>
            <%
                DtCliente u = (DtCliente) session.getAttribute("usuario_logueado");
                String mensajeError = (String) session.getAttribute("mensaje_error");
                String nick = u.getNick();
            %>
            <div class="container">
                <section class="main row">
                    <aside class="col-md-10">
                        <h1>Espotify</h1>
                    </aside>
                    <aside class="col-md-2">
                        <ul class="nodomenu">
                            <a href="consultarPerfil"><li><% out.print(nick);%></li></a>
                            <a href="cerrarSesion"><li>Cerrar sesion</li></a>
                        </ul>
                    </aside>
                </section>
            </div>
        </header>
        <div class="container">
            <p><h2>Agregue temas a sus listas de reproducción</h2><br></p>
            <table width="280" cellspacing="1" cellpadding="3" border="0" bgcolor="#1E679A"> 
                <tr> 
                    <td><font color="#FFFFFF" face="arial, verdana, helvetica"> 
                        <b>Se ha producido un error!</b> 
                        </font></td> 
                </tr> 
                <tr> 
                    <td bgcolor="#ffffcc"> 
                        <font face="arial, verdana, helvetica"> 
                        <% out.print(mensajeError);%>
                        </font> 
                    </td> 
                </tr> 
            </table>
            <br>
            <form action="agregarTemaLista" method="POST">
                <p><input type="text" name="nombreLista" placeholder="Nombre de lista" required></p>
                <p><input type="text" name="artista" placeholder="Nombre del artista" required></p>
                <p><input type="text" name="album" placeholder="Nombre del album" required></p>
                <p><input type="text" name="tema" placeholder="Numero del tema" required></p>
                <p>
                    <input type="button" class="boton" value="Agregar tema" onclick="submit()">
                    <input type="reset" class="boton" value="Limpiar formulario">
                </p>
        </div>
        <footer>
            <div class="container">
            </div>
        </footer>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
    </body>
</html>
