<%-- 
    Document   : regAlumno
    Created on : 23/05/2022, 02:15:22 AM
    Author     : NICOLE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modelo.*,dao.Negocio" %>
<!DOCTYPE html>
<html lang="esS" >
<html>
    <head>
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
        <title>Registrar alumno</title>
    </head>
    <body style="background-color:#96d7f8;">
        <div class="container">
            <h1 class="text-creado">Registrar Alumno </h1>
        <form action="control" id="id_form"> 
			<input type="hidden" name="opc" value="5">	
			<div class="form-group">
				<label class="control-label" for="id_nombre">Nombres</label>
				<input class="form-control" type="text" id="id_nombre" name="nombre" placeholder="Ingrese el nombre">
			</div>
			<div class="form-group">
				<label class="control-label" for="id_apellido">Apellido</label>
				<input class="form-control" type="text" id="id_apellido" name="apellido" placeholder="Ingrese el apellido">
			</div>
			<div class="form-group">
				<label class="control-label" >Grado</label>
                                <select class="form-control" name="cbe">
                                    <option>Elegir </option> 
                                      <%
                              Negocio  obj=new Negocio();
                             for(Grado x:obj.lisGra()){
                                    out.print("<option value="+x.getCode()+">"+x.getNomgra());
                                }                  
                                 %>          
                                 </select>
               </div>
                <div class="form-group">
		<label class="control-label">Procedencia</label>
                <div>
                <input type="radio" name="pro" value="N">Nacional
                </div>
                <div>
                <input type="radio" name="pro" value="P">Particular
                </div>
                </div>  
			<div class="form-group">
				<button type="submit" class="btn btn-primary" >Crea Alumno</button>
                                <a href="buscarAlumn.jsp" class="btn btn-primary" title="Retorno"><i class="fa fa-user"></i>Retornar</a> 
			</div>
	</form>
</div>   
       <script type="text/javascript">
$(document).ready(function() {
    $('#id_form').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	nombre: {
                validators: {
                    notEmpty: {
                        message: 'El nombre es un campo obligatorio'
                    },
              regexp:{
            	  regexp: /^[A-Za-z ñÑ]+$/,
            	 message: 'Solo letras o espacios'
            	  
                  }
                }//validators
            }, 
        	apellido: {
                validators: {
                    notEmpty: {
                        message: 'El apellido es un campo obligatorio'
                    },
                 regexp:{
            	  regexp: /^[A-Za-z ñÑ]+$/,
            	 message: 'Solo letras o espacios'
            	  
                  } 
                }//validatos
            }	      
        }   
    });

    // Validate the form manually
    $('#validateBtn').click(function() {
        $('#id_form').bootstrapValidator('validate');
    });
});
</script>                 
    </body>
</html>
