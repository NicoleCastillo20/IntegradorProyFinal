<%-- 
    Document   : Profesor
    Created on : 23/06/2022, 06:30:23 PM
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
          <div style="background-color:  #96d7f8;height: 12%; width: 100%">
       
      <nav class="navbar navbar-light" >
         <a class="navbar-brand" href="#"><img src="img/colegioL.png" width="250" height="64" class="d-inline-block align-top" ></a>
            <ul class="nav">     
           <li class="nav-item">
                    <a class="navbar-brand" href="pagInicio.jsp">Inicio</a>
           </li>
                
           
           <li class="nav-item">
                    <a class="navbar-brand" href="listarProfe.jsp">Profesor</a>
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
                
                <div>
                <li class="nav-item ">
                    <a class="navbar-brand" href="pagVerAsist.jsp" title="Ver Asistencia"> Consultar asistencia</a>
                </li>
               </div>
                
                <div>
                   <li class="nav-item ">
                 <a href="login.jsp" class="btn btn-dark" title="Iniciar Sesion"><i class="fa fa-user"></i>Cerrar sesión</a> 
                 </li>
                 </div>
                
                
       </ul>
    </nav>
    </body>
</html>
