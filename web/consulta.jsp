<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modelo.*,dao.Negocio" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/adminlte.min.css" rel="stylesheet" type="text/css"/>
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
    <body style="background-color:#96d7f8 ;">
        <%
            Negocio obj=new Negocio();
            String code="",coda="";
            if(request.getParameter("cbe")!=null)
            code=request.getParameter("cbe");
          
            if(request.getParameter("cba")!=null)
            coda=request.getParameter("cba");
         %>   
    <center>
        <h4 class="text-creado">Consultas</h4>
    </center>
    <form>
        <div class="form-group">
            <label class="control-label">Grado</label>
            <select class="form-control" name="cbe" onchange="submit()">
                <option>Elegir</option>
                <%
                 for(Grado x:obj.lisGra()){
                 if(x.getCode().equals(code))
                 out.print("<option value="+x.getCode()+" selected>"+x.getNomgra());
                 else
                 out.print("<option value="+x.getCode()+">"+x.getNomgra());
                  }                  
                %>    
            </select>
        </div>   
        <div class="form-group">
            <label class="control-label">Alumno</label>
            <select class="form-control" name="cba" onchange="submit()">
                <%
                 String nom;
                 for(Alumno x:obj.lisAlumno(code)){
                 nom=x.getApe()+","+x.getNoma();
                 if(x.getCoda().equals(coda))
                 out.print("<option value="+x.getCoda()+" selected>"+nom);
                 else
                 out.print("<option value="+x.getCoda()+">"+nom);
                  }                  
                %>    
            </select>
        </div>       
    </form>
            <table class="table">
                <thead>
                    <tr class="bg-dark"><th>Semestre<th>Pago    
                </thead>    
           <%
              double sm=0;
              for(Pagos x:obj.lisPagos(coda)){
              out.print("<tr><td>"+x.getSemestre()+"<td>"+x.getMonto());
              sm += x.getMonto();
               }
            %>
            <tr><td colspan="1">Total a pagar<td><%=sm%>
            </table>  
            
             <table class="table">
             <thead>
                 <tr class="bg-dark"><th>Codigo<th>Asignatura <th>exaM<th>exaT<th>promedio<th>Observacion
             </thead>   
          <%
            for(Notas x:obj.lisNota(coda)){
            out.print("<tr><td>"+x.getCodc()+"<td>"+x.getNomc()+"<td>"+x.getExs()+"<td>"+x.getExt()+
            "<td>"+x.prome()+"<td>"+x.Obser());
          }  
              
          %>    
         </table>

        <button type="submit" name="accion" value="retornar"  class="btn btn-default btn-lg"style="border-radius: 15px; font:  bold 15px Georgia, Serif;color: #123c63"><a href="buscarAlumn.jsp">Retornar</a></button>
    </body>
</html>
