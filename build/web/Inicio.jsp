<%-- 
    Document   : Inicio
    Created on : 23/05/2022, 12:56:53 AM
    Author     : NICOLE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style type="text/css">
            
            
            html{
     border: 10px solid #706fd3;
     min-height: 100%;
     }
     
              .fuera{
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            padding-top: 80px;
        }
             .dentro{
            width: 550px;
            height: 100%;
        }
        
        .padre {
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            padding-top: 60px;
        }

        .hijo {
            width: 430px;
            height: 100%;
        }

        .text-creado {
            color: #706fd3;
            margin: 0 auto;
            text-align: center;
            font-weight: 200;
            font: bold 42px Georgia, Serif;
            text-shadow: 1px 1px 1px black;
        }

        .text-usuario {
            color: #0075b0;
            margin: 0 auto;
            text-align: center;
            font-weight: 200;
            font: italic bold 30px Georgia, Serif;
            text-shadow: 2px 2px 2px black;
        }
        
        .content-box-purple {
         background-color: #e2e2f9;
        border: 1px solid #bebde9;
        }
        
        </style>
        <title>Ingresar</title>
    </head>
    <body body style="background-color:#96d7f8;" >
     <div class="container">
            <div class="row">
                <div class="col-sm-8">

                    <br>
                    <div class="padre">
                            <div class="hijo">
                                <center>
                                    <img src="img/colegioL.png" class="img-responsive" width="50%" />
                                </center>
                                <br>
                                <h3 class="text-creado">BIENVENIDO ADMINISTRADOR</h3>
                                <br>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="row">
                                                <div class="form-group">
                                                    <center>  <button type="submit" name="accion" value="INGRESAR"  class="btn btn-default btn-lg"style="border-radius: 15px; font:  bold 15px Georgia, Serif;color: #123c63"><a href="buscarAlumn.jsp">INGRESAR</button></a>
                                                </center>
                                                </div>                                                             
                                        </div>
                                    </div>
                                </div>                           
                                <br>
                            </div>                      
                    </div>
                </div>       
            </div>
        </div>
    </body>
</html>
