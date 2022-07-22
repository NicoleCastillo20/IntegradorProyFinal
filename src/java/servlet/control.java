/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import com.google.gson.Gson;
import dao.Negocio;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Alumno;

/**
 *
 * @author Claudio
 */
public class control extends HttpServlet {
Negocio obj=new Negocio();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        int op=Integer.parseInt(request.getParameter("opc"));
        if(op==1)lisAlumno(request, response);
        if(op==2)lisPago(request, response);
        if(op==3)lisNota(request, response);
        if(op==4)filtrado(request, response);
        if(op==5)adiciona(request, response);
    //    if(op==6)modificar(request, response);
        if(op==8)lisAsistencia(request, response);
    }

    protected void adiciona(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Alumno a=new Alumno();
        a.setApe(request.getParameter("apellido"));
        a.setNoma(request.getParameter("nombre"));
        a.setCode(request.getParameter("cbe"));
        a.setProce(request.getParameter("pro"));
       obj.adicion(a);
      String pag="/buscarAlumn.jsp";
      request.getRequestDispatcher(pag).forward(request, response);    
    }
    
 //   protected void modificar(HttpServletRequest request, HttpServletResponse response)
   //         throws ServletException, IOException {
   //     Asistencias as =new Asistencias();
  //      as.setNroA(Integer.parseInt(request.getParameter("cantidad")));
   //     as.setCode(code);

 //      obj.modificar(as);
 //     String pag="/buscarAlumn.jsp";
  //    request.getRequestDispatcher(pag).forward(request, response);    
   // }
    
    
    
    
    
     protected void busca(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      String cod=request.getParameter("cod");
      request.setAttribute("dato", obj.BusAlumno(cod));
      String pag="/buscarAlumn.jsp";
      request.getRequestDispatcher(pag).forward(request, response);
        
    }
     
       protected void lisAlumno(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      String cod=request.getParameter("cod");
      //almacenar temporalmente la lista de alumnos y llamar a la pagAlumno
      request.setAttribute("dato", obj.lisAlumno(cod));
      String pag="/pagAlumno.jsp";
      request.getRequestDispatcher(pag).forward(request, response);
        
    }
      
     protected void filtrado(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      String cod=request.getParameter("consulta");        
        PrintWriter out = response.getWriter();
     Gson gs=new Gson();
        //Lo imprime en el json
      out.println(gs.toJson(obj.filtra(cod)));
        
    }  
    
     protected void lisPago(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      String cod=request.getParameter("cod");
      String nom=request.getParameter("nombre");
   //almacenar temporalmente la lista de alumnos y llamar a la pagAlumno
      request.setAttribute("dato", obj.lisPagos(cod));
      request.setAttribute("dato2", nom);
      
      String pag="/pagPagos.jsp";
      request.getRequestDispatcher(pag).forward(request, response);
        
    }
     
     protected void lisNota(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      String cod=request.getParameter("cod");
      String nom=request.getParameter("nombre");
      //almacenar temporalmente la lista de alumnos y llamar a la pagAlumno
      request.setAttribute("dato", obj.lisNota(cod));
       request.setAttribute("dato2", nom);
      String pag="/pagNotas.jsp";
      request.getRequestDispatcher(pag).forward(request, response);
        
    }
     
     
     protected void lisAsistencia(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      String cod=request.getParameter("cod");
      String nom=request.getParameter("nombre");
      //almacenar temporalmente la lista de alumnos y llamar a la pagAlumno
      request.setAttribute("dato", obj.lisAsistencias(cod));
       request.setAttribute("dato2", nom);
      String pag="/pagAsistencia.jsp";
      request.getRequestDispatcher(pag).forward(request, response);
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
