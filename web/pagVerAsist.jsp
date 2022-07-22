<%@ page import='dao.*,modelo.*' %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
 
    </head>
    <body>
        <style>
        
        html{
     border: 10px solid #706fd3;
     min-height: 100%;
     }
    </style>
        
        <% 
          Negocio obj=new Negocio();
          String code="";
         if(request.getParameter("cbe")!=null)
         code=request.getParameter("cbe");
        
        %>
        <div style="background-color:#96d7f8;height: 12%">
       
           <nav class="navbar navbar-light" >
               <a class="navbar-brand" ><img src="img/colegioL.png" width="250" height="64" class="d-inline-block align-top" ></a>
        </div>
        <div style="text-align: center"> 
            <h2 class="alert-default-info" style="background:#706fd3;text-transform: uppercase;color: black ">Consulta de Asistencias</h2>
        </div>
    
        
        <form>
            <div class="form-group">
                <label class="control-label">Seleccione número de documento</label>
                <select class="form-control" name="cbe" onchange="submit()">
                    <option>Elegir</option>
                    <%
                        for(profesor x:obj.lisDoc()){
                           
                          out.print("<option value="+x.getNroDocu()+">"+x.getNroDocu());
                        }
                    %>
                </select>
            </div>
                
           </form>
                
        <table class="table table-striped">
                    <thead>
                        <tr class="bg-dark text-white"><th>ID<th>Fecha Entrada<th>Hora Entrada<th>Fecha Salida<th>Hora salida
                    </thead>
                    <% 
                   
                    for(asistencias x:obj.ListarAsistencia(code)){
                      out.print("<tr><td>"+x.getIdAsistencia()+"<td>"+x.getFechaEntra()+"<td>"+x.getHoraEntra()+"<td>"+x.getFechaSali()+"<td>"+x.getHoraSali());
                    }
                    %>
                </table>
                
                 <div> <a href="pagInicio.jsp" class="btn btn-primary" title="Retorno"><i class="fa fa-user"></i>Retornar</a> </div>
    </body>
</html>
