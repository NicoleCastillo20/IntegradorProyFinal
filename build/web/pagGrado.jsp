
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modelo.Grado,dao.Negocio" %>
<!DOCTYPE html>
<html>
    <head>
         <link href="css/adminlte.min.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <link rel="stylesheet" href="/lib/bootstrap.min.css">
        <script src="/lib/jquery-1.12.2.min.js"></script>
        <script src="/lib/bootstrap.min.js"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/bootstrap-theme.css">
        <link rel="stylesheet" href="css/bootstrapValidator.css">

<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-1.10.2.min.js"></script>
<script src="js/bootstrapValidator.js"></script>

        <title>JSP Page</title>
    </head>
    <style type="text/css">
        
          html{
     border: 10px solid #706fd3;
     min-height: 100%;
     }
     
     thead th, tfoot th {
  font-family: 'Rock Salt', cursive;
}

th {
  letter-spacing: 2px;
}

td {
  letter-spacing: 1px;
}

tbody td {
  text-align: left;
}

tfoot th {
  text-align: right;
}
     
     
     
 tbody tr:nth-child(odd) {
  background-color:  #ffffff;
}

tbody tr:nth-child(even) {
    background-color: #6fd3c9;
}

tbody tr {
  background-image: url(noise.png);
}

table {
  background-color: #ff33cc;
}
     .text-creado {
            color: #706fd3;
            margin: 0 auto;
            text-align: center;
            font-weight: 200;
            font: bold 42px Georgia, Serif;
            text-shadow: 1px 1px 1px black;
        }


</style>
    <body style="background-color:#96d7f8 ;">
           <%
            Negocio obj=new Negocio();
         %>
         <h2 class="text-creado"><center> Lista por Grados </center></h2>
         <br>
         <br>
         <table class="table">
             <thead>
             <tr class="bg-dark"><th>Codigo<th>Nombre<th>Alumnos
             </thead>   
          <%
            for(Grado x:obj.lisGra()){
            out.print("<tr><td>"+x.getCode()+"<td>"+x.getNomgra()+"<td>");
            %>
            <a href="control?opc=1&cod=<%=x.getCode()%>">Visualizar</a>
            <%
              }  
              
          %>    
         </table>
          <button type="submit" name="accion" value="retornar"  class="btn btn-default btn-lg"style="border-radius: 15px; font:  bold 15px Georgia, Serif;color: #123c63"><a href="buscarAlumn.jsp">Retornar</a></button>
    </body>
</html>
