
<%@page import="dao.Negocio,modelo.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/adminlte.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap-theme.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrapValidator.css" rel="stylesheet" type="text/css"/>
 
    </head>
    <body>
        <script src="config/bootstrap4b-plantilla-inicial-master/js/bootstrap.min.js"></script>
        <script src="config/bootstrap4b-plantilla-inicial-master/js/jquery-1.10.2.min.js"></script>
        <script src="config/bootstrap4b-plantilla-inicial-master/js/bootstrapValidator.js"></script>
        <% Negocio obj=new Negocio();
        
        %>
        
        <div> <a href="pagInicio.jsp" class="btn btn-primary" title="Retorno"><i class="fa fa-user"></i>Retornar</a> </div>
        
   <div class="container">
   <h1>Registre Profesor</h1>

   <form action="ProfesorCO" id="id_form"> 
			<input type="hidden" name="opc" value="1">	
                        
                        <div class="form-group">
                            <label class="control-label" for="cargo">Cargo</label>
                            <select class="form-control" name="cargo">
                                <option value="0">Seleccionar</option>
                                <option value="Docente">Docente</option>
                                <option value="Administrador">Administrador</option>
                            </select>
                        </div>
                        
                        <div class="form-group">
                         <label class="control-label">Horario</label>
                           <select class="form-control" name="cbh">
                             <option>Elegir</option>
                               <%
                                   for(horarios x:obj.listaHora()){
                                      out.print("<option value="+x.getIdHorario()+">"+x.getDescripHora());
                                   }
                                %>
                          </select>
                          
                        </div>
                          
                        <div class="form-group">
                            <label class="control-label" for="genero">Genero</label>
                            <select class="form-control" name="genero">
                                <option value="0">Seleccionar</option>
                                <option value="Masculino">Masculino</option>
                                <option value="Femenino">Femenino</option>
                            </select>
                        </div>
                          
			<div class="form-group">
				<label class="control-label" for="nombre">Nombres</label>
				<input class="form-control" type="text" id="nombre" name="nombre" placeholder="Ingrese el nombre">
			</div>
			<div class="form-group">
				<label class="control-label" for="apellido">Apellidos</label>
                                <div class="input-group">
                                <input class="form-control" type="text" id="apellidop" name="apellidop" placeholder="Paterno" >
                                 <span class="input-group-addon">-</span>
				<input class="form-control" type="text" id="apellidom" name="apellidom" placeholder="Materno">
                                </div>
			</div>
			<div class="form-group">
				<label class="control-label" for="documento">Nro Documento</label>
				<input class="form-control" type="text" id="documento" name="documento" placeholder="Ingrese  nro documento">
			</div>
                        <div class="form-group"> 
                             <label class="control-label" for="telf">Teléfono</label>
                             <input class="form-control" type="text" id="telef" name="telef" placeholder="Ingrese nro de teléfono">
                        </div>
                        <div class="form-group"> 
                             <label class="control-label" for="correo">Correo electrónico</label>
                             <input class="form-control" type="text" id="correo" name="correo" placeholder="Ingrese su correo">
                        </div>
                          
                          <div class="form-group">
                         <label class="control-label">Curso</label>
                           <select class="form-control" name="cbc">
                             <option>Elegir</option>
                               <%
                                   for(cursos x:obj.listaCur()){
                                      out.print("<option value="+x.getNom_curso()+">"+x.getNom_curso());
                                   }
                                %>
                          </select>
                          
                          </div>
                          
                       
                             <div class="form-group">
				<button type="submit" class="btn btn-primary" >Crea Profesor</button>  
			     </div>
                             
                         
			
                    
	</form>
</div>
    </body>
</html>
