<%@page import="clases.Personalizada"%>
<%@page import="dataType.DtTema"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="clases.PorDefecto"%>
<%@page import="java.util.Iterator"%>
<%@page import="dataType.DtListaReproduccionDefecto"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="/Media/estilos/estilos.css" media="screen" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Consultar Perfil</title>
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
        </style>
    </head>
    <body>
        <header>
            <div class="container">
                <h1>Espotify</h1>
            </div>
        </header>
        <div class="container">
            <p><h2>Datos de lista</h2><br></p>
                <% Personalizada lista = (Personalizada) request.getSession().getAttribute("listap");
                    String nick = (String) request.getSession().getAttribute("nick");
                    ArrayList<DtTema> nuevo = (ArrayList<DtTema>) lista.darTemas(); %>
                <p>NOMBRE: <% out.print(lista.getNombre()); %> </p>
                <p>NICK CREADOR: <% out.print(nick); %> </p> <br>
                <h2>Temas</h2><br>
                <% Iterator<DtTema> it = nuevo.iterator();
                    DtTema s;
                    while(it.hasNext()){
                        s = it.next();%>
                        <p>Nombre : <% out.print(s.getNombre()); %></p><br>
                        <p>Duracion : <% out.print(s.getDuracion()); %></p><br>                   
                <%}%>
            <form action="Home" method="POST">
                <input type="button" class="boton" value="Continuar" onclick="submit()">
            </form>
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
