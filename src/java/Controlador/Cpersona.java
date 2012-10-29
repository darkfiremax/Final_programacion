/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Entidades.*;
import Modelo.Mpersona;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Jonathann
 */
public class Cpersona extends HttpServlet {
    String accion="";
    String accion2="";
     String usuario="";
    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        if(request.getParameter("accion")!=null){
        accion=request.getParameter("accion");
        
        }else{
        accion="no";
        }
        if(request.getParameter("accion2")!=null){
        accion2=request.getParameter("accion2");
        }else{
        accion2="no";
        }
        
        if(accion.equals("C")){
        Epersona e =new Epersona();
        Mpersona m=new Mpersona();
        
        int res=0;
        String mensaje;
        e.setNumPersona(request.getParameter("user"));
        e.setClave(request.getParameter("claves"));
        usuario=request.getParameter("user");
        res=m.consultar_person(e);
        if(res==0){
        mensaje ="Usuario o contraseña incorrecto";
        request.setAttribute("mensaje",mensaje);
        RequestDispatcher paginared=request.getRequestDispatcher("index.jsp");
        paginared.forward(request, response);
        }else if(m.getPerfil()==1){
        
        request.setAttribute("usuario",usuario);
        RequestDispatcher paginared=request.getRequestDispatcher("Administrador.jsp");
        paginared.forward(request, response);
            
        }else if(m.getPerfil()==2){
            request.setAttribute("usuario",usuario);
        RequestDispatcher paginared=request.getRequestDispatcher("Monitor.jsp");
        paginared.forward(request, response);
     
        }else if(m.getPerfil()==3){
            request.setAttribute("usuario",usuario);
        RequestDispatcher paginared=request.getRequestDispatcher("Usuario.jsp");
        paginared.forward(request, response);
        
        }
        
        }
        
        
        if(accion.equals("SA")){
        response.sendRedirect("index.jsp");
        }
        if(accion.equals("CARG")){
         String usuario=request.getParameter("usuario");
        request.setAttribute("usuario",usuario);
        RequestDispatcher paginared=request.getRequestDispatcher("Administrador.jsp");
        paginared.forward(request, response);
        
        }
        
        
        if(accion.equals("CO")){
     Map m = new HashMap();
     Mpersona mp=new Mpersona();
     List lPersona =new ArrayList();
     List lCarrera =new ArrayList();
     String usuario=request.getParameter("usuario");
     String cod;
     String cods;
      
     cod=request.getParameter("code");
     lPersona=mp.consulta_persona(cod);
     String mensaje="Este estudiante no existe";
   
     if(lPersona.size()> 0){
      
       request.setAttribute("Usuario",lPersona);
       request.setAttribute("usuario",usuario);
     
      }else{
     request.setAttribute("Mensaje",mensaje);
      request.setAttribute("usuario",usuario);
      }
       
      RequestDispatcher paginared=request.getRequestDispatcher("Administrador.jsp");
     paginared.forward(request, response);
        }
        
        
        
        
        if(accion.equals("CO2")){

            
            
            Map m = new HashMap();
     Mpersona mp=new Mpersona();
     List lPersona =new ArrayList();
     List lCarrera =new ArrayList();
     String cod;
     String cods;
       String usuario=request.getParameter("usuario");
     cod=request.getParameter("cods5");
     lPersona=mp.consulta_persona2(cod);
     String mensaje="Este estudiante no existe";
   
     if(lPersona.size()> 0){
      
       request.setAttribute("Usuario2",lPersona);
        request.setAttribute("usuario",usuario);
     
      }else{
     
      }
       
      RequestDispatcher paginared=request.getRequestDispatcher("Administrador.jsp");
     paginared.forward(request, response);
        }   
       
        
      if(accion.equals("I")){
      int res=0;
      String mensaje;
          Epersona p=new Epersona();
      Mpersona mp=new Mpersona();
        String usuario=request.getParameter("usuario");
      p.setNombre(request.getParameter("newNom"));
      p.setNumPersona(request.getParameter("codigo"));
      p.setApellido(request.getParameter("newApe"));
      p.setTel(request.getParameter("tel"));
      p.setCarrera(Integer.parseInt(request.getParameter("obperfil")));
      p.setCorreo(request.getParameter("as"));
      p.setNum_doc(request.getParameter("newDoc"));
      res=mp.Inserta_persona(p); 
      if(res==0){
      mensaje="El usuario a sido registrado exitosamente";
      }else{
       mensaje="Este usuario ya esta registrado";
      }
      request.setAttribute("usuario",usuario);
     request.setAttribute("Mensaje",mensaje);
     RequestDispatcher paginared=request.getRequestDispatcher("Administrador.jsp");
     paginared.forward(request, response);
//      out.print(request.getParameter("newNom")+"\n"+request.getParameter("codigo")+"\n"
//              +request.getParameter("newApe")+"\n"+request.getParameter("tel")+"\n"+ request.getParameter("obperfil")+"\n"
//              +request.getParameter("as"));
      }
      
      if(accion.equals("ACTU")){
       String usuario=request.getParameter("usuario");  
      Epersona p=new Epersona();
       p.setNumPersona(request.getParameter("Codigo").trim());   
       p.setNombre(request.getParameter("Nombre").trim());
       p.setApellido(request.getParameter("Apellido").trim());
       p.setChrPerfil(request.getParameter("Perfil").trim());
       p.setChrCarrera(request.getParameter("Carrera").trim());
       p.setTel(request.getParameter("Tel").trim());
       p.setNum_doc(request.getParameter("Doc").trim());
       p.setClave(request.getParameter("Clave").trim());
       p.setCorreo(request.getParameter("Correo").trim());
      request.setAttribute("tabla2","si");      
      request.setAttribute("per", p);
          request.setAttribute("usuario",usuario);
      RequestDispatcher paginared=request.getRequestDispatcher("Editar_usu.jsp");
     paginared.forward(request, response);
      //<a href="index.jsp" target="_blank" onClick="window.open(this.href, this.target, 'width=300,height=400'); return false;">Lanzar correctamente</a>
      }
      
       if(accion2.equals("A")){
      Epersona p=new Epersona();
      Mpersona mp =new Mpersona();
        
      p.setNombre(request.getParameter("actNom").toUpperCase());
      p.setApellido(request.getParameter("actApe").toUpperCase());
      p.setPerfil(Integer.parseInt(request.getParameter("actPerf")));
      p.setCarrera(Integer.parseInt(request.getParameter("actCar")));
      p.setTel(request.getParameter("actTel"));
      p.setNum_doc(request.getParameter("actNdoc"));
      p.setClave(request.getParameter("actClv"));
      p.setCorreo(request.getParameter("actCor"));
      p.setNumPersona(request.getParameter("cods5"));
      mp.Actualizar_persona(p);
//      out.print(p.getNombre()+"\n"+p.getApellido()+"\n"+p.getPerfil()+"\n"+p.getCarrera()+"\n"+p.getTel()+"\n"
//              +"\n"+p.getNum_doc()+"\n"+p.getClave()+"\n"+p.getCorreo()+"\n"+p.getNumPersona()+"\n");
     out.println("<html xmlns='http://www.w3.org/1999/xhtml'>");
      out.println("<head><meta http-equiv='Content-Type' content='text/html; charset=utf-8' />");
     out.println("<link href=\"css/personalizado.css\" rel=\"stylesheet\" type=\"text/css\" media=\"screen\" />");
     out.println("</head>");
     out.println("<body>");
     out.println("<div id='boo1'><h1><font color='#006699'>USUARIO ACTUALIZADO EXITOSAMENTE</font></h1><p>&nbsp;</p><div id='boo2'><a href='' onclick=\"window.opener.document.location.href='Cpersona?accion=CO2&usuario="+request.getParameter("usuario")+"&cods5="+p.getNumPersona()+"';window.close();value();\">Aceptar</a></div></div>");
     out.println("</body></html>");
       }
       
       if(accion.equals("COHP")){
        Mpersona pe=new Mpersona();
        Epermiso per=new Epermiso();
        List lPermiso =new ArrayList();
        per.setAnoi(request.getParameter("Anosca"));
        per.setMesi(request.getParameter("Mesesca"));
        per.setDiai(request.getParameter("Diasca"));
        per.setAnof(request.getParameter("Anosca2"));
        per.setMesf(request.getParameter("Mesesca2"));
        per.setDiaf(request.getParameter("Diasca2"));
        lPermiso=pe.Historial_permisos_admin(per);
         String usuario=request.getParameter("usuario");
        request.setAttribute("perimo_usu",lPermiso);
        request.setAttribute("usuario",usuario);
        RequestDispatcher paginared=request.getRequestDispatcher("Administrador.jsp");
        paginared.forward(request, response);
      }
      
       
        if(accion.equals("COHPA")){
        Mpersona pe=new Mpersona();
          String usuario=request.getParameter("usuario");
        Epermiso per=new Epermiso();
        List lPermiso =new ArrayList();
        lPermiso=pe.Permisos_validar();
        request.setAttribute("perimo_Validar",lPermiso);
        request.setAttribute("usuario",usuario);
        RequestDispatcher paginared=request.getRequestDispatcher("Administrador.jsp");
        paginared.forward(request, response);
      }
           
    if(accion.equals("VP")){
     Mpersona pe=new Mpersona();
    int val= Integer.parseInt(request.getParameter("sino2"));
    String cod=request.getParameter("codigop");
    int pkSalida=Integer.parseInt(request.getParameter("pkSalida"));
    pe.actualizar_permiso(val, cod, pkSalida);
    response.sendRedirect("Cpersona?accion=COHPA&usuario="+request.getParameter("usuario"));
    }
    
    if(accion.equals("ACRE")){
     Mpersona pe=new Mpersona();
     String usuario=request.getParameter("usuario");
     String cod=request.getParameter("usuario");
     String clave=request.getParameter("claveact");
     pe.actualizar_credenciales(cod, clave);
     
      out.println("<html xmlns='http://www.w3.org/1999/xhtml'>");
      out.println("<head><meta http-equiv='Content-Type' content='text/html; charset=utf-8' />");
     out.println("<link href=\"css/personalizado.css\" rel=\"stylesheet\" type=\"text/css\" media=\"screen\" />");
     out.println("</head>");
     out.println("<body>");
     out.println("<div id='boo1'><h1><font color='#006699'>CREDENCIALES ACTUALIZADO EXITOSAMENTE</font></h1><p>&nbsp;</p><div id='boo2'><a href='Cpersona?accion=CARG&usuario="+request.getParameter("usuario")+"'>Aceptar</a></div></div>");
     out.println("</body></html>");
    }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Cpersona.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Cpersona.class.getName()).log(Level.SEVERE, null, ex);
            
        }
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
