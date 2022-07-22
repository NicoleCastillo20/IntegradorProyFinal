
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modelo.cursos, java.util.*,dao.Negocio"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/config.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <script src="js/popper.min.js" type="text/javascript"></script>
        <script src="js/jquery-3.2.1.slim.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
       
        <%@include file="Profesor.jsp"%>
       </div> 
       
         <%  
         Negocio obj=new Negocio();
        %>
        <div class="container mt-3">
      <div class="card">
                <div class="card-header" style="background-color: #706fd3">
                   <h5 class="card-title text-center" >Lista de Cursos</h5>
                </div>
         <div class="card-body">
                        <table class="table  table-striped">
                            <thead class="table-dark">
                                <tr>
                                    <th>ID
                                    <th>Curso    
                            </thead>
                            <tbody>  
                                 <% 
                                    for(cursos x:obj.listaCursos()){
                                      out.print("<tr><td>"+x.getId_curso()+"<td>"+x.getNom_curso());
                                    }
                                 %>
                            </tbody>
                        </table>
                    </div>
        </div>
   </div>
   
       
       
    </body>
</html>
