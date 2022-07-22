<%-- 
    Document   : repet
    Created on : 19/06/2022, 01:37:05 PM
    Author     : Claudio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div style="background-color: #137F21;height: 12%; width: 100%">
       
      <nav class="navbar navbar-light" >
         <a class="navbar-brand" href="#"><img src="img/colegio.png" width="250" height="64" class="d-inline-block align-top" ></a>
            <ul class="nav">     
           <li class="nav-item">
                    <a class="navbar-brand" href="pagGeneral.jsp">Inicio</a>
           </li>
                
           
                <li class="nav-item dropdown">
                    <a class="navbar-brand dropdown-toggle" href="#" id="navbarprofe" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Profesores
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarprofe">
                        <a class="dropdown-item" href="listarProfe.jsp" >LISTAR</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">MODIFICAR</a>
                    </div>
                </li>
              
                <li class="nav-item dropdown">
                    <a class="navbar-brand dropdown-toggle" href="#" id="navbarHabitaciones" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Cursos
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarCursos">
                        <a class="dropdown-item" href="listarCursos.jsp">LISTAR</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">ADICIONAR</a>       
                    </div>
                </li>
                
                
                <li class="nav-item">
                    <a class="navbar-brand" href="pagNuevoProf.jsp">Adicionar</a>
                </li>
               
                <div>
                 <a href="login.jsp" class="btn btn-dark" title="Iniciar Sesion"><i class="fa fa-user"></i>Cerrar sesión</a>
                </div>  
          
                
                
                
       </ul>
    </nav>
    </body>
</html>
