<%-- 
    Document   : editaProfe
    Created on : 20/07/2022, 12:14:14 PM
    Author     : Claudio
--%>
<%@page import="modelo.profesor,dao.Negocio,modelo.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="config/bootstrap4b-plantilla-inicial-master/css/bootstrap.min.css">
        <link rel="stylesheet" href="config/bootstrap4b-plantilla-inicial-master/css/bootstrap.css">
        <link rel="stylesheet" href="config/bootstrap4b-plantilla-inicial-master/css/bootstrap-theme.css">
        <link rel="stylesheet" href="config/bootstrap4b-plantilla-inicial-master/css/bootstrapValidator.css">

<script src="config/bootstrap4b-plantilla-inicial-master/js/bootstrap.min.js"></script>
<script src="config/bootstrap4b-plantilla-inicial-master/js/jquery-1.10.2.min.js"></script>
<script src="config/bootstrap4b-plantilla-inicial-master/js/bootstrapValidator.js"></script>
    </head>
    <body>
       <%
           Negocio obj=new Negocio();
        profesor p=(profesor)request.getAttribute("dato");
        
        
       %>
        <div> <a href="listarProfe.jsp" class="btn btn-primary" title="Retorno"><i class="fa fa-user"></i>Retornar</a> </div>
        
<div class="container">
<h1>Edicion de profesor</h1>
	<form action="ProfesorCO" id="id_form"> 
			<input type="hidden" name="opc" value="3">
                        <input type="hidden" name="coda" value="<%=p.getIdProf()%>">
                        
                         <div class="form-group">
                            <label class="control-label" for="cargo">Cargo</label>
                            <select class="form-control" name="cargo">
                                <option value="0">Seleccionar</option>
                                <%
                                   if(p.getCargo().equals("Docente")){
                                          out.print("<option value=Docente selected>"+"Docente");
                                          out.print("<option value=Administrador"+">"+"Administrador");
                                   }else if(p.getCargo().equals("Administrador")){
                                          out.print("<option value=Docente>"+"Docente");
                                          out.print("<option value=Administrador"+" selected>"+"Administrador"); 
                                   }
                                %>
                            </select>
                        </div>
                        
                        <div class="form-group">
                         <label class="control-label">Horario</label>
                           <select class="form-control" name="cbh">
                             <option>Elegir</option>
                               <%
                                   
                                    for(horarios x:obj.listaHora()){
                                        if(p.getIdHorario()== x.getIdHorario())
                                      out.print("<option value="+x.getIdHorario()+" selected>"+x.getDescripHora());
                                        else
                                      out.print("<option value="+x.getIdHorario()+">"+x.getDescripHora());
                                   }
                                   
                                   
                                %>
                          </select>
                          
                        </div>
                          
                        <div class="form-group">
                            <label class="control-label" for="genero">Genero</label>
                            <select class="form-control" name="genero">
                                <option value="0">Seleccionar</option>
                                <%
                                    
                                    if(p.getGenero().equals("Masculino")){
                                          out.print("<option value=Masculino selected>"+"Masculino");
                                          out.print("<option value=Femenino"+">"+"Femenino");
                                    }else if(p.getGenero().equals("Femenino")){
                                          out.print("<option value=Masculino >"+"Masculino");
                                          out.print("<option value=Femenino selected>"+"Femenino");
                                    }
                                %>
                             
                            </select>
                        </div>
                          
			<div class="form-group">
				<label class="control-label" for="nombre">Nombres</label>
                                <input class="form-control" type="text" id="nombre" name="nombre" placeholder="Ingrese nombres" value="<%=p.getNombres()%>">
			</div>
			<div class="form-group">
				<label class="control-label" for="apellido">Apellidos</label>
                                <div class="input-group">
                                    <input class="form-control" type="text" id="apellidop" name="apellidop" placeholder="Paterno" value="<%=p.getApePat()%>" >
                                 <span class="input-group-addon">-</span>
                                 <input class="form-control" type="text" id="apellidom" name="apellidom"  placeholder="Materno" value="<%=p.getApeMat()%>">
                                </div>
			</div>
			<div class="form-group">
				<label class="control-label" for="documento">Nro Documento</label>
                                <input class="form-control" type="text" id="documento" name="documento" placeholder="Ingrese  nro documento" value="<%=p.getNroDocu()%>">
			</div>
                        <div class="form-group"> 
                             <label class="control-label" for="telf">Teléfono</label>
                             <input class="form-control" type="text" id="telef" name="telef" placeholder="Ingrese nro de teléfono" value="<%=p.getTelf()%>">
                        </div>
                        <div class="form-group"> 
                             <label class="control-label" for="correo">Correo electrónico</label>
                             <input class="form-control" type="text" id="correo" name="correo" placeholder="Ingrese su correo" value="<%=p.getCorreo()%>">
                        </div>
                          
                          <div class="form-group">
                         <label class="control-label">Curso</label>
                           <select class="form-control" name="cbc">
                             <option>Elegir</option>
                               <%
                                   
                                   for(cursos x:obj.listaCur()){
                                            if(p.getCurso().equals(x.getNom_curso()))
                                           out.print("<option value="+x.getNom_curso()+" selected>"+x.getNom_curso());
                                            else 
                                                out.print("<option value="+x.getNom_curso()+">"+x.getNom_curso());
                                     
                                   }
                                %>
                          </select>
                          
                          </div>
                          
                       
                             <div class="form-group">
				<button type="submit" class="btn btn-primary" >Editar</button>  
			     </div>       
			
	</form>
</div>

    </body>
</html>
