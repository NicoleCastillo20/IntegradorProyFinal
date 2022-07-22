<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.Negocio,modelo.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/config.css" rel="stylesheet" type="text/css"/>
        <link href="css/conten.css" rel="stylesheet" type="text/css"/>
        <script src="https://kit.fontawesome.com/a076d05399.js" ></script>
        <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>
        <script src="js/datos.js" type="text/javascript"></script>
        <title>JSP Page</title>
        
    </head>
    <body >
        <script src="js/jquery-3.2.1.slim.min.js" type="text/javascript"></script>
        <script src="js/popper.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        
         <style>
        
        html{
     border: 10px solid #706fd3;
     min-height: 100%;
     }
    </style>
        
       <%@include file="Profesor.jsp"%>
       </div> 
       

       <div class="header" style="background-color: #706fd3">
           <h4 style="text-align: center">Colegio Santander</h4>
       </div>
       <div class="row" style="margin-top: 50px">
          <div class="card mt-3" style="width: 25%;justify-content: center;margin-right: 20px">
           <div class="card-header" style="color: black;background-color: #96d7f8">
                 <h5 class="card-title text-center">Misión</h5>
           </div>
         <div class="card-body">
             <h6>Garantizar la calidad del software desarrollado, que satisfaga las necesidades 
                 de la institución educativa. Por tal motivo se pretende desarrollar un   aplicativo 
                 que sea fácil de usar en el que los alumnos y profesores puedan adaptarse con facilidad.</h6>
         </div>
              
        </div>
         
         <div class="card mt-3" style="width: 25%;justify-content: center">
           <div class="card-header" style="color: black;background-color: #96d7f8">
                 <h5 class="card-title text-center">Visión</h5>
           </div>
         <div class="card-body">
             <h6>Desarrollar un aplicativo con el fin de que alumnos y profesores puedan ver 
                 las asistencias por curso. Además, si la aplicación es óptima poder añadirlo a 
                 diferentes áreas no solo al sistema educativo.</h6>
         </div>
        </div>

     </div>
       
      
     <div class="footer">
         <i class='bx bx-mobile-alt' ></i>
         <font style="font-size: 14;font-family: identifier;font-weight: bold">Contacto 981056782</font>
         <div style="float: center;justify-content: center">
             <div id="current_date">
              <script type="text/javascript">fecha()</script>
             </div>
             <div id="mostrarHora" >
                <script type="text/javascript">hora()</script>
            </div>
         </div>
        </div>
    </body>
</html>
