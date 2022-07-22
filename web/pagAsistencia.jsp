
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modelo.AsistenciasA,java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/adminlte.min.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
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
    background-color: #706fd3;
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
    <body style="background-color:#96d7f8;">
        <%
            List<AsistenciasA> lista=(ArrayList)request.getAttribute("dato");
            String nom=(String)request.getAttribute("dato2");
        
         %>
         <h2 class="text-creado">Lista de Asistencias de <%=nom%></h2>
         <br>
         <br>
         <table class="table table-hover">
             <thead>
                 <tr class="bg-dark"><th>Codigo<th>Asignatura <th>nroAsistencias <th>DiasDeClases<th>Observacion
             </thead>   
           <%
            double tm=0;
            double total=0;
         
            for(AsistenciasA x:lista){             
            out.print("<tr><td>"+x.getCode()+"<td>"+x.getNomc()+"<td>"+x.getNroA()+"<td>"+x.getDiasA()+"<td>"+x.Obser());
                    
              tm=tm+x.getNroA();
              total= (tm/90)*100;          
          }  



          %>           
          <tr><td colspan="1">Total de asistencias <td><%=tm%> 
          <tr><td colspan="1">Total porcentaje de asistencias <td><%=total%>   
         
         </table>        
          <br>
        <button type="submit" name="accion" value="retornar"  class="btn btn-default btn-lg"style="border-radius: 15px; font:  bold 15px Georgia, Serif;color: #123c63"><a href="pagGrado.jsp">Retornar</a></button>
         
         
    
        
    </body>
</html>
