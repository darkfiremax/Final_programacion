<%-- 
    Document   : Monitor
    Created on : 23-oct-2012, 9:08:55
    Author     : Jonathann
--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>SCGPU Monitor</title>
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
		<p>Monitor</p>
	</div>
  <div id="page" class="container">
		
    <div style="clear: both;">
          <h2>monitor</h2>

<div id="tab-container" class='tab-container'>
 <ul class='etabs'>
   <li class='tab'><a href="#nuevoReg">Solicitar Permiso</a></li>
   <li class='tab'><a href="#gestPerm">Ver historial Permisos Usuario</a></li>
   <li class='tab'><a href="#gestPerm2">Ver Historial de Faltas</a></li>
   <li class='tab'><a href="#gestPerm4">Gestión de Faltas</a></li>
   <li class='tab'><a href="#gestPerm3">Actualizar credenciales</a></li>
    <li class='tab'><a href="#gestPerm5">Actualizar Datos Personales</a></li>
  </li>
 </ul>
 
 <div class='panel-container'>
  <div id="nuevoReg">
   <h2>Registrar datos del permiso</h2>
   <p>&nbsp;</p>
  
<p>Código
  <input type="text" name="cods12" id="cods12" />
  <input type="submit" name="los8" id="los8" value="Buscar" />
</p>
<p>Descripción</p>
<p>
  <textarea name="as" id="as4" cols="45" rows="5"></textarea>
</p>
<p>Fecha de Inicio
  <input name="fecha4" placeholder="dd/mm/aaaa"type="datetime" id="fecha"  />
  Fecha Final
  <input name="fecha4" placeholder="dd/mm/aaaa"type="datetime" id="fecha" />
</p>
<p>Hora Inicio
  <input name="fecha5" placeholder="hh:mm:tt"type="datetime" id="fecha3"  />
  Fecha Final
  <input name="fecha5" placeholder="hh:mm:tt"type="datetime" id="fecha3" />
</p>
<p>
  <input type="submit" name="guardar" id="guardar" value="Guardar" />
</p>
<h2>______________________________________</h2>
<h2>Validar permiso</h2>
<p>Código
  <input type="text" name="cods5" id="cods5" />
  <input type="submit" name="los5" id="los5" value="Buscar" />
</p>
<table width="925" height="132" border="1">
  <tr>
    <th scope="col">Código</th>
    <th scope="col">Nombre</th>
    <th scope="col">Fecha de Inicio</th>
    <th scope="col">Fecha Final</th>
    <th scope="col">Hora Inicio</th>
    <th scope="col">Hora Final</th>
    <th scope="col">Aprobar?</th>
  </tr>
  <tr>
    <th scope="col">20111012127</th>
    <th scope="col">Jonathan Ladino</th>
    <th scope="col">30/08/2012</th>
    <th scope="col">30/08/2012</th>
    <th scope="col">8:00 am</th>
    <th scope="col">12:00pm</th>
    <th scope="col"><form id="form8" method="post" action="">
      <p>
        <label for="sino3"></label>
        <select name="sino4" id="sino3">
          <option value="1">Si</option>
          <option value="2">No</option>
        </select>
      </p>
    </form></th>
  </tr>
  <tr>
    <th scope="col">20124012123</th>
    <th scope="col">Andrés Martínez</th>
    <th scope="col">29/08/2012</th>
    <th scope="col">29/08/2012</th>
    <th scope="col">12:00 pm</th>
    <th scope="col">6:00 pm</th>
    <th scope="col"><form id="form9" method="post" action="">
      <p>
        <label for="sino3"></label>
        <select name="sino4" id="sino4">
          <option value="1">Si</option>
          <option value="2">No</option>
        </select>
      </p>
    </form></th>
  </tr>
  <tr>
    <th scope="col">20103489893</th>
    <th scope="col">David Hernández</th>
    <th scope="col">27/08/2012</th>
    <th scope="col">27/08/2012</th>
    <th scope="col">4:00 pm</th>
    <th scope="col">5:30 pm</th>
    <th scope="col"><form id="form10" method="post" action="">
      <p>
        <label for="sino3"></label>
        <select name="sino4" id="sino5">
          <option value="1">Si</option>
          <option value="2">No</option>
        </select>
      </p>
    </form></th>
  </tr>
</table>
<p>
  <input type="submit" name="guardar3" id="guardar3" value="Guardar" />
  </div>
   <div id="gestPerm">
     <div id="histPerm2">
       <h2>Historial de Permisos</h2>
       <form id="form2" method="post" action="">
         <p>
           <label for="fecha2"></label>
           Código
           <input type="text" name="cods" id="cods" />
           <input type="submit" name="los" id="los" value="Buscar" />
         </p>
         <p>Desde:
  <input name="fecha" placeholder="dd/mm/aaaa"type="datetime" id="fecha2"  />
           Hasta:
           <input name="fecha2" placeholder="dd/mm/aaaa"type="datetime" id="fecha2" />
         </p>
         <p>
           <input type="submit" name="ve" id="ve" value="Ver" />
         </p>
         <table width="834" height="132" border="1">
           <tr>
             <th scope="col">Código</th>
             <th scope="col">Nombre</th>
             <th scope="col">Fecha Inicial - Hora</th>
             <th scope="col">Fecha Final - Hora</th>
             <th scope="col">Motivo</th>
           </tr>
           <tr>
             <th scope="col">20111012127</th>
             <th scope="col">Jonathan Ladino</th>
             <th scope="col">28/08/2012 - 8:00 am</th>
             <th scope="col">28/08/2012 - 12:00 pm</th>
             <th scope="col">Salud</th>
           </tr>
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
   <div id="gestPerm4">
     <div id="histPerm3">
       <h2>Registro de Faltas</h2>
       <p>Código
         <input type="text" name="cods6" id="cods7" />
         <input type="submit" name="los6" id="los7" value="Buscar" />
       </p>
       <p>Descripción:</p>
       <form id="form11" method="post" action="">
         <p>
           <label for="as5"></label>
           <textarea name="as5" id="as5" cols="45" rows="5"></textarea>
         </p>
       </form>
       <p>
         <input type="submit" name="guar4" id="guar4" value="Guardar" />
       </p>
       <h2>______________________________________</h2>
       <h2>consultar faltas</h2>
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
       <p>Por fecha:</p>
       <form id="form3" method="post" action="">
         <p>
           <label for="fecha3"></label>
           Desde:
           <input name="fecha3" placeholder="dd/mm/aaaa"type="datetime" id="fecha3"  />
           Hasta:
           <input name="fecha3" placeholder="dd/mm/aaaa"type="datetime" id="fecha3" />
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
         <p></p>
       </form>
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
       <p>IIngrese su nueva contraseña:
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
					<h2><span style="clear: both;"><img class="spotlight" alt="" aria-describedby="fbPhotosSnowliftCaption" aria-busy="false" src="http://a8.sphotos.ak.fbcdn.net/hphotos-ak-ash4/225874_123571941055238_4711032_n.jpg" width="320" height="170";" /></span>Hogar de varones</h2>
					
				</div>
			</div>
		</div>
		<div id="tbox2">
			<div class="box-style">
				<div class="image"></div>
				<div class="arrow"></div>
				<div class="content">
					<h2><span style="clear: both;"><img src="http://a2.sphotos.ak.fbcdn.net/hphotos-ak-ash4/222360_123571934388572_5468720_n.jpg" alt="" width="320" height="170"" class="spotlight"; " aria-describedby="fbPhotosSnowliftCaption" aria-busy="false" /></span>Hogar de señoritas</h2>
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

