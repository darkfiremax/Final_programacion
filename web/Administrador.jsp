<%-- 
    Document   : Administrador
    Created on : 23-oct-2012, 9:03:52
    Author     : Jonathann
--%>

<%@page import="com.sun.org.apache.bcel.internal.generic.AALOAD"%>
<%@page import="Modelo.Mpersona"%>
<%@page import="Entidades.Epersona"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>SCGPU Administrador</title>
<link href="http://fonts.googleapis.com/css?family=Dancing+Script|Open+Sans+Condensed:300" rel="stylesheet" type="text/css" />
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
#wrapper #menu ul #form1 {
	text-align: right;
}
</style>
<script src="vendor/jquery-1.7.1.min.js" type="text/javascript"></script> 
  <script src="vendor/jquery.hashchange.min.js" type="text/javascript"></script>
  <script src="lib/jquery.easytabs.min.js" type="text/javascript"></script>
  <style>
    /* Example Styles for Demo */
    .etabs { margin: 0; padding: 0; }
    .tab { display: inline-block; zoom:1; *display:inline; background: #eee; border: solid 1px #999; border-bottom: none; -moz-border-radius: 4px 4px 0 0; -webkit-border-radius: 4px 4px 0 0; }
    .tab a { font-size: 14px; line-height: 2em; display: block; padding: 0 10px; outline: none; }
    .tab a:hover { text-decoration: underline; }
    .tab.active { background: #fff; padding-top: 6px; position: relative; top: 1px; border-color: #666; }
    .tab a.active { font-weight: bold; }
    .tab-container .panel-container { background: #fff; border: solid #666 1px; padding: 10px; -moz-border-radius: 0 4px 4px 4px; -webkit-border-radius: 0 4px 4px 4px; }
    .panel-container { margin-bottom: 10px; }
  #apDiv1 {
	position:absolute;
	left:423px;
	top:756px;
	width:187px;
	height:32px;
	z-index:1;
}
#apDiv2 {
	position:absolute;
	width:200px;
	height:26px;
	z-index:2;
	left: 421px;
	top: 721px;
}
#apDiv3 {
	position:absolute;
	width:200px;
	height:29px;
	z-index:3;
	left: 422px;
	top: 671px;
}
#apDiv4 {
	position:absolute;
	width:200px;
	height:26px;
	z-index:4;
	left: 422px;
	top: 632px;
}
#apDiv5 {
	position:absolute;
	width:148px;
	height:27px;
	z-index:5;
	left: 421px;
	top: 583px;
}
#apDiv6 {
	position:absolute;
	width:245px;
	height:26px;
	z-index:6;
	left: 420px;
	top: 537px;
}
#apDiv7 {
	position:absolute;
	width:245px;
	height:26px;
	z-index:6;
	left: 355px;
	top: 589px;
}
  #apDiv8 {
	position:absolute;
	width:200px;
	height:24px;
	z-index:7;
	left: 421px;
	top: 767px;
}
apDivs4{
 position: absolute;
	left: 420px;
	top: 819px;
	width: 203px;
	height: 25px;
	z-index: 9;  
}
#Fondo_act {
	position: absolute;
	left: 14px;
	top: 1157px;
	width: 1158px;
	height: 226px;
	z-index: 9;
	background-color: #FFFF00;
}
  </style>
  <script type="text/javascript">
    $(document).ready( function() {
      $('#tab-container').easytabs();
     
    });
  </script>
</head>
<body>

    <div id="divimg">
        <a href="Cpersona?accion=SA">
            <img src="images/salir.gif" alt="" width="83" height="94" alt="salir" />
    </a>
    </div>
<div id="wrapper">
	<div id="menu" class="container">
	  <ul>
	  <form id="form1" method="post" action="">
      <br>
	  </form>
			
		  <li></li>
	  </ul>
  </div>
	<div id="logo" class="container">
    <h1><a href="#">bienvenido </a></h1>
		<p>Administrador</p>
	</div>
  <div id="page" class="container">
		
    <div style="clear: both;">
          <h2>Permisos Administrativos</h2>

<div id="tab-container" class='tab-container'>
 <ul class='etabs'>
   <li class='tab'><a href="#nuevoReg">Gestión de Usuario</a></li>
   <li class='tab'><a href="#gestPerm">Gestón de Permisos</a></li>
   <li class='tab'><a href="#gestPerm2">Gestión de Faltas</a></li>
   <li class='tab'><a href="#gestPerm3">Actualizar credenciales</a></li>
    <li class='tab'><a href="#gestPerm5">Actualizar Datos Personales</a></li>
  </li>
 </ul>
     <%
  
List lPersona =new ArrayList();
List lPersona2 =new ArrayList();
List lPerfil =new ArrayList();
Epersona p=new Epersona();
Epersona p2=new Epersona();
Epersona p3=new Epersona();
p3=(Epersona)request.getAttribute("per");
List lCarrera=new ArrayList();
Mpersona mp=new Mpersona();

 lCarrera=mp.Listar_carreras();
 
lPersona=(List)request.getAttribute("Usuario");
lPersona2=(List)request.getAttribute("Usuario2");
String mensaje=""; 
 mensaje=(String)request.getAttribute("Mensaje");
 if(mensaje==null){mensaje="";}
  if(lPersona==null){

  }else{
Map m = new HashMap();
m=(Map)lPersona.get(0);
p.setNumPersona((String)m.get("Codigo"));
p.setNombre((String)m.get("Nombre"));
p.setApellido((String)m.get("Apellido"));
p.setTel((String)m.get("Telefono"));
p.setNum_doc((String)m.get("Documento"));
p.setCorreo((String)m.get("Correo")); 

  }
 if(lPersona2==null){

  }else{
Map m = new HashMap();
m=(Map)lPersona2.get(0);
p2.setNumPersona((String)m.get("Codigo"));
p2.setNombre((String)m.get("Nombre"));
p2.setApellido((String)m.get("Apellido"));
p2.setChrCarrera((String)m.get("Carrera"));
p2.setTel((String)m.get("Telefono"));
p2.setChrPerfil((String)m.get("Perfil"));
p2.setNum_doc((String)m.get("Documento"));
p2.setClave((String)m.get("Clave"));
p2.setCorreo((String)m.get("Email"));


  }
 //if(lPersona.size()>0){
       

%>
 <div class='panel-container'>
  <div id="nuevoReg">
   <h2>Registrar nuevo usuario</h2>
   <p>&nbsp;</p>
  
<p>Código</p>
<form id="form1" method="post" action="Cpersona">
<div id="apDiv6">
    <input type="text" name="code" id="code" value="<%=p.getNumPersona()%>"/>
  <input type="hidden" name="accion" value="CO"/>
  <input type="submit" name="busca" id="busca" value="Buscar" />
</div>
</form>
  <form id="form1" method="post" action="Cpersona">
  <p>Nombre</p>
<div id="apDiv5">
    <input type="text" name="newNom" id="newNom" value="<%=p.getNombre()%>" />
     <input type="hidden" name="codigo" value="<%=p.getNumPersona()%>"/>
</div>
<p>Apellido</p>
<div id="apDiv4">
    <input type="text" name="newApe" id="newApe" value="<%=p.getApellido()%>" />
</div>

<p>Carrera</p>
<div id="apDiv8">
    <input type="text" name="tel" id="tel" value="<%=p.getTel()%>"/>
</div>
<div id="apDiv3">
<select name="obperfil" class="texto" id="cbgenero">
    <%
if(lCarrera!=null){
    for (int i=0; i< lCarrera.size(); i++){
    Map m2=new HashMap();
    m2=(Map)lCarrera.get(i);
    %>    
   
    <option value="<%=(String)(m2.get("pkCarrera"))%>"><%=(String)(m2.get("carrera"))%></option>

    <%}}%>
 </select>
</div>
<p>E-mail</p>
<div id="apDiv2">
    <input type="text" name="as" id="as" value="<%=p.getCorreo()%>" />
    
    
</div>
   
<p>Teléfono/Celular</p>
<p>Numero de documento</p>
 <div id="apDivs4">
    <input type="text" name="newDoc" id="newDoc" value="<%=p.getNum_doc()%>" />
</div>
<p>
  <input type="hidden" name="accion" value="I"/>
  <input type="submit" name="guardar" id="guardar" value="Guardar" /><font color="red">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=mensaje%></font>
</p>
</form>
<h2>______________________________________</h2>
<h2>Actualizar Usuario  </h2>
<p>
  </form>
  <form id="form5" method="post" action="Cpersona">
  Código
  <input type="text" name="cods5" id="cods5" />
   <input type="hidden" name="accion" value="CO2"/>
  <input type="submit" name="los5" id="los5" value="Buscar" />
  </form>
</p>
<% if(lPersona2==null){}else if(request.getAttribute("tabla2")==null){ %>
<table width="834" height="132" border="1">
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
    <th scope="col"><%=p2.getNumPersona()%></th>
    <th scope="col"><%=p2.getNombre() %></th>
    <th scope="col"><%=p2.getApellido() %></th>
    <th scope="col"><%=p2.getChrPerfil() %></th>
    <th scope="col"><%=p2.getChrCarrera() %></th>
    <th scope="col"><%=p2.getTel() %></th>
    <th scope="col"><%=p2.getNum_doc() %></th>
    <th scope="col"><%=p2.getClave() %></th>
    <th scope="col"><%=p2.getCorreo() %></th>
    <%--   <form id="form5" method="post" action="Cpersona" onsubmit="window.open(this.action, 'width=300,height=400'); return false;">
    <input type="hidden" name="Codigo" value="<%=p2.getNumPersona()%>"/>
    <input type="hidden" name="Nombre" value="<%=p2.getNombre() %>"/>
    <input type="hidden" name="Apellido" value="<%=p2.getApellido() %>"/>
    <input type="hidden" name="Perfil" value="<%=p2.getChrPerfil() %>"/>
    <input type="hidden" name="Carrera" value="<%=p2.getChrCarrera() %>"/>
    <input type="hidden" name="Tel" value="<%=p2.getTel() %>"/>
    <input type="hidden" name="Doc" value="<%=p2.getNum_doc() %>"/>
    <input type="hidden" name="Clave" value="<%=p2.getClave() %>"/>
    <input type="hidden" name="Correo" value="<%=p2.getCorreo() %>"/> 
    
    <input type="hidden" name="accion" value="ACTU"/>--%>
    
   <th scope="col"><a href="Cpersona?accion=ACTU&Codigo=<%=p2.getNumPersona()%>&Nombre=<%=p2.getNombre() %>&Apellido=<%=p2.getApellido() %>&Perfil=<%=p2.getChrPerfil() %>&Carrera=<%=p2.getChrCarrera() %>&Tel=<%=p2.getTel() %>&Doc=<%=p2.getNum_doc() %>&Clave=<%=p2.getClave() %>&Correo=<%=p2.getCorreo() %>" target="_blank" onClick="window.open(this.href, this.target, 'width=2000,height=180,scrollbars=NO,toolbar=0,resizable=0'); return false;">Actualizar</a></th>
    
    <%--<th scope="col"><a href="Cpersona?accion=ACTU" target="_blank" onClick="window.open(this.href, this.target, 'width=300,height=400'); return false;">Actualizar</a></th>
    
    <%--<th scope="col"><input type="submit" name="acv" id="acv" value="Actualizar" /></th>--%>
    </form>
    </tr>
  
</table>
<%}%>
<h2>______________________________________</h2>

</div>
   <div id="gestPerm">
     <div id="histPerm2">
       <h2>Historial de Permisos</h2>
    <form id="form4" method="post" action="Cpersona">      
         <p>
           <label for="fecha2"></label>
  
           Desde:
            <select name="Diasca" id="Dias">
<option selected value="dia">Día</option>
<option value="01">01</option>
<option value="02">02</option>
<option value="03">03</option>
<option value="04">04</option>
<option value="05">05</option>
<option value="06">06</option>
<option value="07">07</option>
<option value="08">08</option>
<option value="09">09</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21">21</option>
<option value="22">22</option>
<option value="23">23</option>
<option value="24">24</option>
<option value="25">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
<option value="31">31</option>
</select>

<select name="Mesesca" id="Meses">
<option selected value="Mes">Mes</option>
<option value="01">Enero</option>
<option value="02">Febrero</option>
<option value="03">Marzo</option>
<option value="04">Abri</option>
<option value="05">Mayo</option>
<option value="06">Junio</option>
<option value="07">Julio</option>
<option value="08">Agosto</option>
<option value="09">Septiembre</option>
<option value="10">Octubre</option>
<option value="11">Noviembre</option>
<option value="12">Diciembre</option> 
  </select>
<select name="Anosca" id="Anos">
<option selected value="Año">Año</option>
<option value="2012">2012</option>
</select>
           Hasta:
           <select name="Diasca2" id="Dias">
<option selected value="dia">Día</option>
<option value="01">01</option>
<option value="02">02</option>
<option value="03">03</option>
<option value="04">04</option>
<option value="05">05</option>
<option value="06">06</option>
<option value="07">07</option>
<option value="08">08</option>
<option value="09">09</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21">21</option>
<option value="22">22</option>
<option value="23">23</option>
<option value="24">24</option>
<option value="25">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
<option value="31">31</option>
</select>

<select name="Mesesca2" id="Meses">
<option selected value="Mes">Mes</option>
<option value="01">Enero</option>
<option value="02">Febrero</option>
<option value="03">Marzo</option>
<option value="04">Abri</option>
<option value="05">Mayo</option>
<option value="06">Junio</option>
<option value="07">Julio</option>
<option value="08">Agosto</option>
<option value="09">Septiembre</option>
<option value="10">Octubre</option>
<option value="11">Noviembre</option>
<option value="12">Diciembre</option> 
  </select>
<select name="Anosca2" id="Anos">
<option selected value="Año">Año</option>
<option value="2012">2012</option>
</select>
         </p>
         <p>
             <input type="hidden" name="usuario" value="<%=(String)request.getAttribute("usuario")%>"/>
           <input type="hidden" name="accion" value="COHP"/>
             <input type="submit" name="ve" id="ve" value="Ver"/>
         </form>
         </p>
         <%
  List lPermiso=new ArrayList();
lPermiso=(List)request.getAttribute("perimo_usu"); 
if(lPermiso!=null){%>
         <table width="834" height="132" border="1">
           <tr>
             <th scope="col">Código</th>
             <th scope="col">Nombres</th>
             <th scope="col">Apellidos</th>
             <th scope="col">Tipo permiso</th>
             <th scope="col">Motivo</th>
             <th scope="col">Fecha Inicial - Hora</th>
             <th scope="col">Fecha Final - Hora</th>
           </tr>
             <%   

            if(lPermiso!=null){
    for (int i=0; i< lPermiso.size(); i++){
    Map m2=new HashMap();
    m2=(Map)lPermiso.get(i);
    %>
    <tr>
    <th scope="col"><%=(String)m2.get("Codigo") %></th>
    <th scope="col"><%=(String)m2.get("Nombre")  %></th>
    <th scope="col"><%=(String)m2.get("Apellido") %></th>
    <th scope="col"><%=(String)m2.get("TipoS") %></th>
    <th scope="col"><%=(String)m2.get("Motivo") %></th>
    <th scope="col"><%=(String)m2.get("Fechai")+" - "+(String)m2.get("Horai") %></th>
             <th scope="col"><%=(String)m2.get("Fechaf")+" - "+(String)m2.get("Horaf") %></th>
  </tr>
             <%}}}%>
         </table>
         <p>&nbsp;</p>
       </form>
     </div>
     <div id="histFalt2">
       <h2>______________________________________</h2>
       <h2>Validar permiso</h2>
     <form id="asdw" method="post" action="Cpersona">    
        <input type="hidden" name="accion" value="COHPA"/>
        <input type="hidden" name="usuario" value="<%=(String)request.getAttribute("usuario")%>"/>
       <input type="submit" name="asds" id="asds" value="Ver" />
     </form>
       </p>
  <%
Mpersona mp2=new Mpersona();
List lPermiso2=new ArrayList();          
lPermiso2=(List)request.getAttribute("perimo_Validar");  
if(lPermiso2!=null){
%>  
      
       <table width="925" height="132" border="1">
         <tr>
           <th scope="col">Código</th>
           <th scope="col">Nombre</th>
           <th scope="col">Apellido</th>
           <th scope="col">Fecha de Inicio</th>
           <th scope="col">Fecha Final</th>
           <th scope="col">Hora Inicio</th>
           <th scope="col">Hora Final</th>
           <th scope="col">Aprobar?</th>
         </tr>
           <%   


            if(lPermiso2!=null){
    for (int i=0; i< lPermiso2.size(); i++){
    Map m2=new HashMap();
    m2=(Map)lPermiso2.get(i);
    %>
           <tr>
                 <form id="form4" method="post" action="Cpersona"> 
               <th scope="col"><%=(String)m2.get("codigo")%></th>
               <th scope="col"><%=(String)m2.get("Nombre") %></th>
           <th scope="col"><%=(String)m2.get("Apellido") %></th>
           <th scope="col"><%=(String)m2.get("fechai") %></th>
           <th scope="col"><%=(String)m2.get("fechaf") %></th>
           <th scope="col"><%=(String)m2.get("horai") %></th>
           <th scope="col"><%=(String)m2.get("horaf") %></th>
           <th scope="col">
           
               <p>
               <label for="sino"></label>
               <select name="sino2" id="sino">
                 <option value="0">Escoja opcion</option>
                   <option value="1">Si</option>
                 <option value="2">No</option>
               </select>
             </p>
           </th>
            
                <input type="hidden" name="accion" value="VP"/>
                <input type="hidden" name="codigop" value="<%=(String)m2.get("codigo")%>"/>
                <input type="hidden" name="pkSalida" value="<%=(String)m2.get("pkSalida")%>"/>
                <input type="hidden" name="usuario" value="<%=(String)request.getAttribute("usuario")%>"/>
           <th scope="col"><input type="submit" name="los2" id="los2" value="Guardar" /></th>
            </form>
         </tr>
         <%}}}%>
     </table>
       <p>&nbsp;</p>
      
         <p>&nbsp;</p>
     
     </div>
</div>
   <div id="gestPerm2">
     <div id="histPerm">
       <h2>Registro de Faltas</h2>
       <p>Código
         <input type="text" name="cods6" id="cods7" />
         <input type="submit" name="los6" id="los7" value="Buscar" />
       </p>
       <p>Descripción:</p>
       <form id="form11" method="post" action="">
         <p>
           <label for="as"></label>
           <textarea name="as5" id="as" cols="45" rows="5"></textarea>
         </p>
       </form>
       <p>
         <input type="submit" name="guar4" id="guar4" value="Guardar" />
       </p>
 <h2>______________________________________</h2>
       <h2>consulta de faltas</h2>
       <p>Por alumno:</p>
       <p>Código
         <input type="text" name="cods3" id="cods3" />
         <input type="submit" name="los3" id="los3" value="Buscar" />
       </p>
       <table width="925" height="132" border="1">
         <tr>
           <th scope="col">Código</th>
           <th scope="col">Nombre</th>
           <th scope="col">Descripción</th>
           <th scope="col">Fecha de registro</th>
         </tr>
         <tr>
           <th scope="col">20111012127</th>
           <th scope="col">Jonathan Ladino</th>
           <th scope="col">No fue a culto</th>
           <th scope="col">30/08/2012</th>
         </tr>
       </table>
       <p>Por fecha:</p>
       <form id="form3" method="post" action="">
         <p>
           <label for="fecha5"></label>
           Desde:
           <input name="fecha3" placeholder="dd/mm/aaaa"type="datetime" id="fecha5"  />
           Hasta:
           <input name="fecha3" placeholder="dd/mm/aaaa"type="datetime" id="fecha5" />
         </p>
         <p>
           <input type="submit" name="ve2" id="ve2" value="Ver" />
         </p>
         <table width="925" height="132" border="1">
           <tr>
             <th scope="col">Código</th>
             <th scope="col">Nombre</th>
             <th scope="col">Descripción</th>
             <th scope="col">Fecha de registro</th>
           </tr>
           <tr>
             <th scope="col">20111012127</th>
             <th scope="col">Jonathan Ladino</th>
             <th scope="col">No fue a culto</th>
             <th scope="col">30/08/2012</th>
           </tr>
           <tr>
             <th scope="col">20124012123</th>
             <th scope="col">Andrés Martínez</th>
             <th scope="col">Se escapó</th>
             <th scope="col">29/08/2012</th>
           </tr>
           <tr>
             <th scope="col">20103489893</th>
             <th scope="col">David Hernández</th>
             <th scope="col">Llegó tarde</th>
             <th scope="col">27/08/2012</th>
           </tr>
         </table>
         <p>&nbsp;</p>
       </form>
       <p>&nbsp;</p>
     </div>
   </div>
   <div id="gestPerm5">
     <div id="histPerm3">
       <h2>Actualizar datos personales</h2>
       <h1>&nbsp;</h1>
       <p>Código
         <input type="text" name="cods11" id="cods11" />
         <input type="submit" name="los7" id="los6" value="Buscar" />
       </p>
       <p>Nombre:
         <input type="text" name="cods12" id="cods12" />
       </p>
       <p>Apellido:
         <input type="text" name="cods13" id="cods13" />
       </p>
       <p>Dirección:
         <input type="text" name="cods14" id="cods14" />
       </p>
       <p>E-mail:
         <input type="text" name="cods15" id="cods15" />
       </p>
       <p>Teléfono: 
         <input type="text" name="cods16" id="cods16" />
       </p>
       <form id="form6" method="post" action="">
         <p>
             <input type="hidden" name="usuario" value="<%=(String)request.getAttribute("usuario")%>"/>
           <input type="submit" name="guardar2" id="guardar2" value="Guardar" />
         </p>
     </form>
       <p>&nbsp;</p>
     </div>
   </div>
   <div id="gestPerm3">
     <div id="histPerm3">
       <h2>Actualizar credenciales</h2>
       <h1>Cambiar Contraseña</h1>
    <form id="1ss" method="post" action="Cpersona">    
       <p>Ingrese su nueva contraseña:
         <input type="text" name="claveact" id="cods9" />
     </p>
       <p>Repita su nueva contraseña 
         <input type="text" name="claveact2" id="cods10" />
     </p>
      
         <p>
             <input type="hidden" name="usuario" value="<%=(String)request.getAttribute("usuario")%>"/>
            <input type="hidden" name="accion" value="ACRE"/> 
           <input type="submit" name="guardar2" id="guardar2" value="Guardar" />
         </p>
    </form>
       <p>&nbsp;</p>
     </div>
   </div>
 </div>
</div><!-- End demo -->
    </div>
</div><!-- End demo -->
</p>
</div>
  </div>
		<!-- end #content --><!-- end #sidebar -->
	  <div style="clear: both;">&nbsp;</div>
	</div>
	<!-- end #page -->
	<div id="three-column" class="container">
		<div id="tbox1">
			<div class="box-style">
				<div class="image"></div>
				<div class="arrow"></div>
				<div class="content">
					<h2><span style="clear: both;"><img class="spotlight" alt="" aria-describedby="fbPhotosSnowliftCaption" aria-busy="false" src="images/hombre.jpg" width="320" height="170" /></span>Hogar de varones</h2>
					
				</div>
			</div>
		</div>
		<div id="tbox2">
			<div class="box-style">
				<div class="image"></div>
				<div class="arrow"></div>
				<div class="content">
					<h2><span style="clear: both;"><img src="images/mujer.jpg" alt="" width="320" height="170" class="spotlight"aria-describedby="fbPhotosSnowliftCaption" aria-busy="false" /></span>Hogar de señoritas</h2>
			  </div>
			</div>
		</div>
		<div id="tbox3">
			<div class="box-style">
				<div class="image">
                <h2><span style="clear: both;"><img src="images/16.jpg" alt="" width="320" height="170" class="spotlight" aria-describedby="fbPhotosSnowliftCaption" aria-busy="false" /></span>
				</div>
				<div class="arrow"></div>
				<div class="content">
				  <h2>corporación universitaria adventista</h2>
			   </div>
			</div>
		</div>
	</div>
</div>
<div id="footer-content" class="container">

<div id="footer">
	<p>© 2012 SCGP Inc. All rights reserved.  Design by Jonathann Ladino &amp; Jonathan Pacheco</p>
</div>
<!-- end #footer -->
</body>
</html>
