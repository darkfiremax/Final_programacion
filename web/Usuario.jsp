<%-- 
    Document   : Usuario
    Created on : 23-oct-2012, 9:07:45
    Author     : Jonathann
--%>

<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Mpersona"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>SCGPU Usuario</title>
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
  </style>
  <script type="text/javascript">
    $(document).ready( function() {
      $('#tab-container').easytabs();
    });
  </script>
</head>
<body>
    <%
    List lTipos=new ArrayList();
    Mpersona mp=new Mpersona();
    
 lTipos=mp.listar_Tipo_salida();
 
String mensaje="";
if((String)request.getAttribute("mensaje")==null){
mensaje="";
}else{
mensaje =(String) request.getAttribute("mensaje");
}   

%>
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
		<p>Usuario</p>
	</div>
  <div id="page" class="container">
		
    <div style="clear: both;">
          <h2>Usuario</h2>

<div id="tab-container" class='tab-container'>
 <ul class='etabs'>
   <li class='tab'><a href="#nuevoReg">Solicitar Permiso</a></li>
   <li class='tab'><a href="#gestPerm">Ver historial Permisos Usuario</a></li>
   <li class='tab'><a href="#gestPerm2">Ver Historial de Faltas de Usuario</a></li>
   <li class='tab'><a href="#gestPerm3">Actualizar credenciales</a></li>
    <li class='tab'><a href="#gestPerm5">Actualizar Datos Personales</a></li>
   </li>
 </ul>
  
 <div class='panel-container'>
   <form id="form1" method="post" action="Cusuario"> 
     <div id="nuevoReg">

      <h2>Registrar datos del permiso</h2>
   <p>&nbsp;</p>
  

<p>Tipo de salida   
   <select name="tiposali" class="texto" id="tiposali">
           <%
if(lTipos!=null){
    for (int i=0; i< lTipos.size(); i++){
    Map m2=new HashMap();
    m2=(Map)lTipos.get(i);
    %>    
   
    <option value="<%=(String)(m2.get("pkSalida"))%>"><%=(String)(m2.get("salida"))%></option>

    <%}}%>
   </select>   
</p>     
  
<p>Descripción</p>
<p>
  <textarea name="perDes" id="perDes" cols="45" rows="5"></textarea>
</p>
<p>Fecha de Inicio
  <select name="Dias" id="Dias">
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

<select name="Meses" id="Meses">
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
<select name="Anos" id="Anos">
<option selected value="Año">Año</option>
<option value="2012">2012</option>
</select>
  Fecha Final
  <select name="Dias2" id="Dias2">
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

<select name="Meses2" id="Meses2">
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
<select name="Anos2" id="Anos2">
<option selected value="Año">Año</option>
<option value="2012">2012</option>
</select>
</p>
</p>
<p>Hora Inicio
  <select name="horai" id="horai">
<option selected value="hora">Hora</option>
<option value="00">00</option>
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
</select>
<select name="Minutoi" id="Minutoi">
<option selected value="minutos">Minutos</option>
<option value="00">00</option>
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
<option value="24">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
<option value="31">31</option>
<option value="32">32</option>
<option value="33">33</option>
<option value="34">34</option>
<option value="35">36</option>
<option value="37">37</option>
<option value="38">38</option>
<option value="39">39</option>
<option value="40">40</option>
<option value="41">41</option>
<option value="45">45</option>
<option value="46">46</option>
<option value="47">47</option>
<option value="48">48</option>
<option value="49">49</option>
<option value="50">50</option>
<option value="51">51</option>
<option value="52">52</option>
<option value="53">53</option>
<option value="54">54</option>
<option value="55">55</option>
<option value="56">56</option>
<option value="57">57</option>
<option value="58">58</option>
<option value="59">59</option>
</select>
<select name="Segundoi" id="Segundoi">
<option selected value="seg">Segundos</option>
<option value="00">00</option>
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
<option value="24">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
<option value="31">31</option>
<option value="32">32</option>
<option value="33">33</option>
<option value="34">34</option>
<option value="35">36</option>
<option value="37">37</option>
<option value="38">38</option>
<option value="39">39</option>
<option value="40">40</option>
<option value="41">41</option>
<option value="45">45</option>
<option value="46">46</option>
<option value="47">47</option>
<option value="48">48</option>
<option value="49">49</option>
<option value="50">50</option>
<option value="51">51</option>
<option value="52">52</option>
<option value="53">53</option>
<option value="54">54</option>
<option value="55">55</option>
<option value="56">56</option>
<option value="57">57</option>
<option value="58">58</option>
<option value="59">59</option>
</select>
  Hora Final
  <select name="horaf" id="horaf">
<option selected value="hora">Hora</option>
<option value="00">00</option>
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
</select>
<select name="Minutof" id="Minutof">
<option selected value="minutos">Minutos</option>
<option value="00">00</option>
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
<option value="24">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
<option value="31">31</option>
<option value="32">32</option>
<option value="33">33</option>
<option value="34">34</option>
<option value="35">36</option>
<option value="37">37</option>
<option value="38">38</option>
<option value="39">39</option>
<option value="40">40</option>
<option value="41">41</option>
<option value="45">45</option>
<option value="46">46</option>
<option value="47">47</option>
<option value="48">48</option>
<option value="49">49</option>
<option value="50">50</option>
<option value="51">51</option>
<option value="52">52</option>
<option value="53">53</option>
<option value="54">54</option>
<option value="55">55</option>
<option value="56">56</option>
<option value="57">57</option>
<option value="58">58</option>
<option value="59">59</option>
</select>
<select name="Segundof" id="Segundof">
<option selected value="seg">Segundos</option>
<option value="00">00</option>
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
<option value="24">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
<option value="31">31</option>
<option value="32">32</option>
<option value="33">33</option>
<option value="34">34</option>
<option value="35">36</option>
<option value="37">37</option>
<option value="38">38</option>
<option value="39">39</option>
<option value="40">40</option>
<option value="41">41</option>
<option value="45">45</option>
<option value="46">46</option>
<option value="47">47</option>
<option value="48">48</option>
<option value="49">49</option>
<option value="50">50</option>
<option value="51">51</option>
<option value="52">52</option>
<option value="53">53</option>
<option value="54">54</option>
<option value="55">55</option>
<option value="56">56</option>
<option value="57">57</option>
<option value="58">58</option>
<option value="59">59</option>
</select>
</p>
<p>
   <input type="hidden" name="accion" value="IP"/>
  <input type="submit" name="guardar" id="guardar" value="Guardar" />
  <font color="red"><%=mensaje%></font>
</p>
</div>
    <input type="hidden" name="usuario" value="<%=(String)request.getAttribute("usuario")%>"/>
   </form>
   <div id="gestPerm">
     <div id="histPerm2">
       <h2>Historial de Permisos</h2>
      
         <p>
           <label for="fecha2"></label>
         
         </p>
   <form id="form2" method="post" action="Cusuario">         
         <p>Desde:
           <select name="Diasc" id="Dias">
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

<select name="Mesesc" id="Meses">
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
<select name="Anosc" id="Anos">
<option selected value="Año">Año</option>
<option value="2012">2012</option>
</select>
           Hasta:
   <select name="Diasc2" id="Dias">
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

<select name="Mesesc2" id="Meses">
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
<select name="Anosc2" id="Anos">
<option selected value="Año">Año</option>
<option value="2012">2012</option>
</select>
         </p>
         <p>
              <input type="hidden" name="usuario" value="<%=(String)request.getAttribute("usuario")%>"/>
               <input type="hidden" name="accion" value="COHP"/>
           <input type="submit" name="veERR" id="veERR" value="Ver" />
         </p>
               </form>  
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
             <th scope="col">Validacion</th>
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
    <th scope="col"><%=(String)m2.get("Validacion") %></th>
  </tr>
             <%}}}%>          
           
         </table>
         <p>&nbsp;</p>
       </form>
     </div>
     <div id="histFalt2"></div>
</div>
   <div id="gestPerm2">
     <div id="histPerm">
       <h2>Historial de Faltas</h2>
       <p>Código
         <input type="text" name="cods2" id="cods2" />
         <input type="submit" name="los2" id="los2" value="Buscar" />
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
<h2>&nbsp;</h2>
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
       <p>Código
         <input type="text" name="cods11" id="cods11" />
         <input type="submit" name="los7" id="los6" value="Buscar" />
       </p>
       <p>Ingrese su nueva contraseña:
         <input type="text" name="cods9" id="cods9" />
     </p>
       <p>Repita su nueva contraseña 
         <input type="text" name="cods10" id="cods10" />
     </p>
       <form id="form6" method="post" action="">
         <p>
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
					<h2><span style="clear: both;"><img src="images/mujer.jpg" alt="" width="320" height="170" class="spotlight"  aria-describedby="fbPhotosSnowliftCaption" aria-busy="false" /></span>Hogar de señoritas</h2>
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

