package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import dao.UsuarioSQL;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("<html>\n");
      out.write(" <head>\n");
      out.write("        <meta charset=\"utf-8\" />\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n");
      out.write("        <link href=\"css/bootstrap-theme.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <style type=\"text/css\">\n");
      out.write("            \n");
      out.write("             html{\n");
      out.write("     border: 10px solid #706fd3;\n");
      out.write("     min-height: 100%;\n");
      out.write("     }\n");
      out.write("              .fuera{\n");
      out.write("            height: 100%;\n");
      out.write("            display: flex;\n");
      out.write("            justify-content: center;\n");
      out.write("            align-items: center;\n");
      out.write("            padding-top: 60px;\n");
      out.write("        }\n");
      out.write("             .dentro{\n");
      out.write("            width: 550px;\n");
      out.write("            height: 100%;\n");
      out.write("        }\n");
      out.write("        </style>\n");
      out.write("        <title>Login</title>\n");
      out.write("</head>\n");
      out.write("    \n");
      out.write("<body style=\"background-color: #96d7f8;\">  \n");
      out.write("<div class=\"container\">   \n");
      out.write("   <div class=\"row\">\n");
      out.write("     <div class=\"col-sm-12\">\n");
      out.write("    <br>\n");
      out.write("   <div class=\"fuera\">\n");
      out.write("   <form action=\"#\" method=\"post\" >\n");
      out.write("   <div class=\"dentro\">\n");
      out.write("   <center> \n");
      out.write("      <img src=\"img/colegioL.png\" class=\"img-responsive\" width=\"40%\" />\n");
      out.write("   </center>\n");
      out.write("     \n");
      out.write("     \n");
      out.write("   <div class=\"panel\" >\n");
      out.write("    <div class=\"panel-heading\">\n");
      out.write("      <div class=\"panel-body\"style=\"border: #96d7f8 25px outset;\">\n");
      out.write("         <div class=\"col-sm-7\">\n");
      out.write("              <div class=\"form-group\">\n");
      out.write("                   <label class=\"text-left\">Correo </label>\n");
      out.write("                   <input  type=\"text\"  class=\"form-control\" id=\"correo\" name=\"correo\" style=\"border-radius: 15px; font:  bold 20px Georgia, Serif;color: #123c63\" required=\"\">\n");
      out.write("              </div>\n");
      out.write("          <div class=\"form-group\">\n");
      out.write("                <label class=\"text-left\">Contraseña </label>\n");
      out.write("                <input type=\"password\"  class=\"form-control\" id=\"pass\" name=\"pass\" style=\"border-radius: 15px; font:  bold 20px Georgia, Serif;color: #123c63\" required=\"\">\n");
      out.write("           </div>\n");
      out.write("        </div>\n");
      out.write("         \n");
      out.write("        <div class=\"col-sm-5\" style=\"background: #000000;border-radius: 90px\">\n");
      out.write("           <img src=\"img/ingreso.jpg\" class=\"img-responsive\" >\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("           <div class=\"row\">\n");
      out.write("              <div class=\"col-sm-6\">\n");
      out.write("                 <div class=\"form-group\">\n");
      out.write("                   <input type=\"hidden\" name=\"accion\" value=\"login\" >\n");
      out.write("                   <input type=\"submit\" value=\"Ingresar\"class=\"btn \"  style=\"border-radius: 15px; font:  bold 15px Georgia, Serif;color: black;background-color:#706fd3  \">\n");
      out.write("                 </div>\n");
      out.write("\n");
      out.write("              </div>\n");
      out.write("           </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("   </div>\n");
      out.write("  </div>\n");
      out.write("     </form>\n");
      out.write("       \n");
      out.write("       ");
 
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
        
      out.write("\n");
      out.write("   </div>\n");
      out.write("   </div>\n");
      out.write("  </div>\n");
      out.write(" </div> \n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
