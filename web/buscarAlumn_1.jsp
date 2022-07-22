<%-- 
    Document   : buscarAlumn
    Created on : 23/05/2022, 01:46:21 AM
    Author     : NICOLE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="/lib/bootstrap.min.css">
        <script src="/lib/jquery-1.12.2.min.js"></script>
        <script src="/lib/bootstrap.min.js"></script>
        <link href="css/adminlte.min.css" rel="stylesheet" type="text/css"/>
        <script src="js/jquery-1.10.2.min.js" type="text/javascript"></script>
        <script src="js/filtrar.js" type="text/javascript"></script>
          <style type="text/css">

              
         html{
     border: 10px solid #706fd3;
     min-height: 100%;
     }     
              
              
        body  {
        margin: 0;
        padding: 0;
        font: normal 13px arial, helvetica, sans-serif;
        background: #000;
              }
 

        .content-box-purple {
         background-color: #e2e2f9;
        border: 1px solid #bebde9;
        }
        
         .text-creado {
            color: #706fd3;
            margin: 0 auto;
            text-align: center;
            font-weight: 200;
            font: bold 42px Georgia, Serif;
            text-shadow: 1px 1px 1px black;
        }

        .text-creado1 {
            color:white ;
            margin: 0 auto;
            text-align: center;
            font-weight: 100;
            font: bold 30px Georgia, Serif;
            text-shadow: 1px 1px 1px black;
        }

        
        </style>
        <title>Pagina2</title>
    </head>
    <body style="background-color:#96d7f8 ;">
        
        
        <h1 class="text-creado">Institución Educativa Privada Colegio Santander</h1>
        <br>
        <DIV ALIGN="CENTER" STYLE="margin-top:2px; margin-left:2px; color:black;
        font-size:25px; font-family:Verdana;">PLATAFORMA EDUCATIVA </DIV>

       <DIV ALIGN="CENTER" STYLE="margin-top:-33px; color:#007bff ; font-size:25px;
        font-family:Verdana;">PLATAFORMA EDUCATIVA</DIV>

        <br>
        <br>
        <br>
        
    <center>            
        <div class="container">
        <div class="btn-group btn-group-justified">
         <a href="regAlumno.jsp" class="btn btn-primary">Registrarse</a>
         <a href="pagGrado.jsp" class="btn btn-primary">Grados</a>
         <a href="consulta.jsp" class="btn btn-primary">Consulta</a>
         <a href="Asistencias.jsp" class="btn btn-primary">Asistencias</a>
         </div>
         </div>
    </center>
            
    <br>
    <br>
    <br>
   
    <center>
         <div class="table table-hover">  
         <table>                
           <tr><td class="text-creado1"> Apellido<td><input id="txtnom" name="busca" placeholder="Ingresar apellido">    
         </table>      
         </div>  
        </center>
        <div id="tablares"></div>       
    </body>   
    <script> 
        
       function pasaSeleccion(coda,ape,nom){ 
        //window.alert(prec); 
      //  alert(prod); 
      nombre=ape+","+nom; 
       location="control?opc=6&cod="+coda; 
      //  window.parent.recibeSeleccion(codp,prod,prec);        
    } 
    </script> 
</html>
