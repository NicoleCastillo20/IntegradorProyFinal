
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modelo.Alumno,java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/adminlte.min.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PaginaAlumno</title>
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
    <body style="background-color:#96d7f8;">
         <%
            List<Alumno> lista=(ArrayList)request.getAttribute("dato");
         %>
         <h2 class="text-creado">Lista de Alumnos</h2>
         <br>
         <br>
         <table class="table">
             <thead>
                 <tr class="bg-dark"><th>Codigo<th>Nombre<th>Apellido<th>Foto<th>Pago<th>Notas<th>Asistencias
             </thead>   
          <%
            String nom;
            for(Alumno x:lista){
            out.print("<tr><td>"+x.getCoda()+"<td>"+x.getNoma()+"<td>"+x.getApe()+"<td>");
            nom=x.getApe()+","+x.getNoma();
          %>
            <img src="fotosInte/<%=x.getCoda()%>.jpg" width="90" height="90" class="img-circle"
                 onerror="src='fotosInte/sin_foto.jpg' "
                 >
            <td><a href="control?opc=2&cod=<%=x.getCoda()%>&nombre=<%=nom%>">ver Pagos</a>
            <td><a href="control?opc=3&cod=<%=x.getCoda()%>&nombre=<%=nom%>">ver Notas</a>
            <td><a href="control?opc=8&cod=<%=x.getCoda()%>&nombre=<%=nom%>">ver Asistencias</a>    
           
            
            <%
              }  
              
          %>    
         </table>
          <button type="submit" name="accion" value="retornar"  class="btn btn-default btn-lg"style="border-radius: 15px; font:  bold 15px Georgia, Serif;color: #123c63"><a href="pagGrado.jsp">Retornar</a></button>
         
    </body>
</html>
