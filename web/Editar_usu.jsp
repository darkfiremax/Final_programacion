<%-- 
    Document   : Editar_usu
    Created on : 26-oct-2012, 9:53:03
    Author     : Jonathann
--%>

<%@page import="java.lang.String"%>
<%@page import="javax.swing.text.Document"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Entidades.Epersona"%>
<%@page import="Modelo.Mpersona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <%Epersona p3=new Epersona();
p3=(Epersona)request.getAttribute("per");
List lPerfil =new ArrayList();
List lCarrera=new ArrayList();
Mpersona mp=new Mpersona();
 lCarrera=mp.Listar_carreras();
  lPerfil=mp.Listar_perfil();
  String nombre;
%>   
    <form id="f1" name="f1" method="post" action="Cpersona">
    <table width="700" height="100" border="1">
<tr>
    <th scope="col">Código</th>
    <th scope="col">Nombre</th>
    <th scope="col">Apellido</th>
    <th scope="col">Perfil</th>
    <th scope="col">Carrera</th>
    <th scope="col">Teléfono/Celular</th>
    <th scope="col">Documento</th>
    <th scope="col">Clave</th>
    <th scope="col">Email</th>
    <th scope="col"></th>
    </tr>
  <tr>
    <th scope="col"><%=p3.getNumPersona()%></th>
   
    <th scope="col"><input type="text" size="<%=p3.getNombre().length()%>" name="actNom" id="actNom" value="<%=p3.getNombre() %>"/>
    <%  %>
    </th>
    <th scope="col"><input type="text" size="<%=p3.getApellido().length()%>" name="actApe" id="actApe" value="<%=p3.getApellido() %>" /></th>
    <th scope="col"><select name="actPerf" class="texto" id="actPerf"> <%
if(lPerfil!=null){
    for (int i=0; i< lPerfil.size(); i++){
    Map m2=new HashMap();
    m2=(Map)lPerfil.get(i);
    %>    
    <option value="<%=(String)(m2.get("pkPerfil"))%>" <%=p3.getChrPerfil().equals((String)(m2.get("perfil"))) ? "selected" : ""%>><%=(String)(m2.get("perfil"))%></option>

    <%}}%></select></th>
    <th scope="col"><select name="actCar" class="texto" id="actCar"> <%
if(lCarrera!=null){
    for (int i=0; i< lCarrera.size(); i++){
    Map m2=new HashMap();
    m2=(Map)lCarrera.get(i);
    %>    
    <option value="<%=(String)(m2.get("pkCarrera"))%>" <%=p3.getChrCarrera().equals((String)(m2.get("carrera"))) ? "selected" : ""%>><%=(String)(m2.get("carrera"))%></option>

    <%}}%></select>
    </th>
    <th scope="col"><input type="text" size="<%=p3.getTel().length()%>" name="actTel" id="actTel" value="<%=p3.getTel() %>" /></th>
    <th scope="col"><input type="text" size="<%=p3.getNum_doc().length()%>" name="actNdoc" id="actNdoc" value="<%=p3.getNum_doc() %>" /></th>
    <th scope="col"><input type="text" size="<%=p3.getClave().length()%>" name="actClv" id="actClv" value="<%=p3.getClave() %>" /></th>
    <th scope="col"><input type="text" size="<%=p3.getCorreo().length()%>" name="actCor" id="actCor" value="<%=p3.getCorreo() %>" /></th>
   
    
      <input type="hidden" name="cods5" value="<%=p3.getNumPersona()%>"/>
      <%-- <th scope="col"><input type="submit" name="guardar" id="guardar" size="17" value=" " onclick="window.opener.document.location.href='Cpersona?accion2=A&actNom=&actApe=&actPerf=&actCar=&actTel=&actNdoc=&actClv=&actCor=&cods5=';window.close();" style='background:url("images/disqut.gif");'/></th>
    --%>
     <input type="hidden" name="accion2" value="A"/>
      <input type="hidden" name="accion" value="nnA"/>
    <th scope="col"><input type="submit" name="guardar" id="guardar" size="17" value=" " style='background:url("images/disqut.gif");'/></th>
    <%--
    onclick='window.opener.document.location.href='Cpersona;window.close();value();' style='background:url("images/disqut.gif");'
    --%>
    </tr>
</table>
    </form>
    </head>
    <body>
        
    </body>
</html>
