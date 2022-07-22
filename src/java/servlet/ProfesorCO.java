/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.ProfesorSQL;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.profesor;

/**
 *
 * @author Claudio
 */
public class ProfesorCO extends HttpServlet {

     ProfesorSQL profe=new ProfesorSQL();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        int op=Integer.parseInt(request.getParameter("opc"));
        if(op==1)adiciona(request, response);
        if(op==2)buscaProfe(request, response);
        if(op==3)editProfe(request, response);
        if(op==4)elimiProfe(request, response);
    }

    
    
   protected void adiciona(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        profesor p=new profesor();
        p.setIdHorario(Integer.parseInt(request.getParameter("cbh")));
        p.setCargo(request.getParameter("cargo"));
        p.setGenero(request.getParameter("genero"));
        p.setNroDocu(request.getParameter("documento"));
        p.setNombres(request.getParameter("nombre"));
        p.setApePat(request.getParameter("apellidop"));
        p.setApeMat(request.getParameter("apellidom"));
        p.setTelf(request.getParameter("telf"));
        p.setCorreo(request.getParameter("correo"));
        p.setCurso(request.getParameter("cbc"));
        profe.agregar(p);
       String pag="/listarProfe.jsp";
      request.getRequestDispatcher(pag).forward(request, response);
        
    }
   
    protected void buscaProfe(HttpServletRequest request, HttpServletResponse response)//opc1
            throws ServletException, IOException {
        String id=request.getParameter("id");
        profesor p=profe.busca(id);
        //Reenviar el prestamo del dato encontrado a la página editar
        request.setAttribute("dato", p);
        String pag="/editaProfe.jsp";
        request.getRequestDispatcher(pag).forward(request, response);  
       
    }
    
     protected void editProfe(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        profesor p=new profesor();
        p.setIdProf(Integer.parseInt(request.getParameter("coda")));
        p.setIdHorario(Integer.parseInt(request.getParameter("cbh")));
        p.setCargo(request.getParameter("cargo"));
        p.setGenero(request.getParameter("genero"));
        p.setNroDocu(request.getParameter("documento"));
        p.setNombres(request.getParameter("nombre"));
        p.setApePat(request.getParameter("apellidop"));
        p.setApeMat(request.getParameter("apellidom"));
        p.setTelf(request.getParameter("telf"));
        p.setCorreo(request.getParameter("correo"));
        p.setCurso(request.getParameter("cbc"));
        profe.modificarProfe(p);
      String pag="/listarProfe.jsp";
      request.getRequestDispatcher(pag).forward(request, response);  
       
    }
     
     protected void elimiProfe(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id=request.getParameter("id");
        profe.anula(id);
        String pag="/listarProfe.jsp";
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
