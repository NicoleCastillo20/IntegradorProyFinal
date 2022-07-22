<%@page import="dao.UsuarioSQL" %>
<html>
 <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link href="css/bootstrap-theme.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
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
            padding-top: 60px;
        }
             .dentro{
            width: 550px;
            height: 100%;
        }
        </style>
        <title>Login</title>
</head>
    
<body style="background-color: #96d7f8;">  
<div class="container">   
   <div class="row">
     <div class="col-sm-12">
    <br>
   <div class="fuera">
   <form action="#" method="post" >
   <div class="dentro">
   <center> 
      <img src="img/colegioL.png" class="img-responsive" width="40%" />
   </center>
     
     
   <div class="panel" >
    <div class="panel-heading">
      <div class="panel-body"style="border: #96d7f8 25px outset;">
         <div class="col-sm-7">
              <div class="form-group">
                   <label class="text-left">Correo </label>
                   <input  type="text"  class="form-control" id="correo" name="correo" style="border-radius: 15px; font:  bold 20px Georgia, Serif;color: #123c63" required="">
              </div>
          <div class="form-group">
                <label class="text-left">Contraseña </label>
                <input type="password"  class="form-control" id="pass" name="pass" style="border-radius: 15px; font:  bold 20px Georgia, Serif;color: #123c63" required="">
           </div>
        </div>
         
        <div class="col-sm-5" style="background: #000000;border-radius: 90px">
           <img src="img/ingreso.jpg" class="img-responsive" >
        </div>

           <div class="row">
              <div class="col-sm-6">
                 <div class="form-group">
                   <input type="hidden" name="accion" value="login" >
                   <input type="submit" value="Ingresar"class="btn "  style="border-radius: 15px; font:  bold 15px Georgia, Serif;color: black;background-color:#706fd3  ">
                 </div>

              </div>
           </div>
      </div>
    </div>
   </div>
  </div>
     </form>
       
       <% 
          UsuarioSQL us=new UsuarioSQL();
          if(request.getParameter("accion")!=null){
           String nombre=request.getParameter("correo");
           String contra=request.getParameter("pass");
           HttpSession ses=request.getSession();
           switch(us.InicioSes(nombre, contra)){
               case 1: 
               ses.setAttribute("user", nombre);
               ses.setAttribute("contra", contra);
               ses.setAttribute("nivel", "2");
               response.sendRedirect("pagInicio.jsp");
               break;
               case 2: 
               ses.setAttribute("user", nombre);
               ses.setAttribute("contra", contra);
               ses.setAttribute("nivel", "1");
               response.sendRedirect("Inicio.jsp");
               
                   
           }
          }
        %>
   </div>
   </div>
  </div>
 </div> 
</body>
</html>
