<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License

Name       : Enchanting
Description: A two-column, fixed-width design with dark color scheme.
Version    : 1.0
Released   : 20120818

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Home</title>
<link href="http://fonts.googleapis.com/css?family=Dancing+Script|Open+Sans+Condensed:300" rel="stylesheet" type="text/css" />
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<script src="vendor/jquery-1.7.1.min.js" type="text/javascript"></script> 
  <script src="vendor/jquery.hashchange.min.js" type="text/javascript"></script>
  <script src="lib/jquery.easytabs.min.js" type="text/javascript"></script>
<style type="text/css">
#wrapper #menu ul #form1 {
	text-align: right;
}
</style>
</head>
<body>
    <%
String m=(String) request.getAttribute("mensaje");  
if(m==null){
m="";
} 

%>
<div id="wrapper">
	<div id="menu" class="container">
	  <ul>
	  <form id="form1" method="post" action="Cpersona">
      <br>
	    Usuario
            <input name="user" id="user" type="text" />
		  Contraseña
		  <label for="contraseña"></label>
		  <input type="password" name="claves" id="claves" />
                  <input type="hidden" name="accion" value="C"/>
<input type="submit" name="enviar" id="enviar" value="Iniciar" />

        </form>
              <div id="divnoti"><font color="red"><%=m%></font> </div>		
		  <li></li>
		</ul>

			 </style>
  <script type="text/javascript">
    $(document).ready( function() {
      $('#tab-container').easytabs();
    });
  </script>
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
	</div>
	<div id="logo" class="container">
    <h1><a href="#">Sistema de control </a></h1>
		<p>de gestión de Permisos UNAC.</p>
	</div>
	<div id="page" class="container">
		<div id="banner"><img src="images/01.jpg" width="959" height="380" alt="" /></div>
		<div id="content">
			<div class="post">
				<h2 class="title">Bienvenidos al Sistema de control de gestión de permisos UNAC</h2>
				<div class="entry">
					<p>Esta es una interfaz que nos permite el fácil y rápido acceso a una petición de un permiso por parte de un estudiante residente al preceptor o personal autorizado</p>
			  En la UNAC, existen 2 Hogares, el Hogar de Señoritas que está conformado por más de 200 residentes, y el Hogar de Varones con más de 300 residentes, y hemos visto que a la hora de pedir permisos a sus respectivos preceptores, notamos cierta demora en la respuesta de los mismos, con este sistema podriamos avanzar enormemente en el tiempo de respuesta, y se podría tener un mayor control sobre los estudiantes residentes.</div>
              <style type="text/css">
#wrapper #menu ul #form1 {
	text-align: right;
}
</style>

              <div id="tab-container" class='tab-container'>
 <ul class='etabs'>
   <li class='tab'><a href="#prece">Preceptores</a></li>
   <li class='tab'><a href="#quienes">Quienes Somos</a></li>
   <li class='tab'><a href="#justificar">Objetivos</a>
   </li>
 </ul>
 
 <div class='panel-container'>
  <div id="prece">
   <h2>Los Preceptores</h2>
   <p>&nbsp;</p>
   <li class="first">En el hogar de varones existen 2 preceptores, Hans Palacios, quién es el preceptor por excelencia del Hogar de Varones, y Walmer Guzmán, Preceptor asociacio quién terminará sus estudios en la Universidad este semestre.</li>
			<li>La preceptora Saray Zárate, es la preceptora por excelencia del Hogar de Señoritas, le acompaña la Sra.Kirenia, quién trabaja en la Academia de Música y es a la vez Preceptora Asociada del Hogar de Señoritas
</p>
</div>
   <div id="quienes">
      <div id="quienes">
       <h2>Quiénes somos</h2>
<li>Misión</li>
			La Corporación Universitaria Adventista reconoce a Dios como Creador, Redentor y Sustentador del hombre y del universo; y en armonía con los principios filosóficos y educativos inspirados por el Espíritu Santo, evidenciados en la naturaleza, ejemplificados por Jesucristo, expuestos en las Sagradas Escrituras y tal como los profesa la iglesia Adventista del Séptimo Día, nuestra Institución declara como su misión propiciar y fomentar una significativa relación del hombre con Dios por medio del trabajo en las diferentes disciplinas del conocimiento. En consecuencia, la Corporación se define como una institución universitaria sin ánimo de lucro que desarrolla su labor educativa enmarcada en el servicio a Dios, la comunidad adventista y la sociedad en general.
            <li>Visión</li>
            La Corporación Universitaria Adventista será una universidad completamente accesible a la Iglesia Adventista del Séptimo Día en particular, y a la comunidad en general, con el propósito de preparar ciudadanos para este mundo y para la eternidad.</p>
</div>
</div>
    <div id="justificar">
       <div id="justificar">
       <h2>Objetivos y Justificación</h2>
     <img src="images/logoSGPU.png" />
      <li>Se tiene un sistema manual diseñado para el control de los permisos, por lo cual se pierde mucha información y no se lleva un registro correcto de quien pide los permisos, también es muy difícil saber a que residente no se le pueden dar permisos por alguna falta cometida, ya que todo esto está almacenado en un libro de registro, tampoco es posible sacar un dato estadístico de quienes son los que piden más permisos o cometen más faltas.
      
       <li>Sistema de Control de Gestión de Permisos UNAC, será una aplicación web de fácil acceso aplicada a la gestión de permisos los 2 hogares. Tendrá fácil y rápida acceso a la información de los residentes. Sistema de Control de Gestión de Permisos UNAC, tendrá la opción de consultar, de actualizar, ingresar información correspondiente a residentes, monitores y preceptor.</li>
                  <div style="clear: both;">&nbsp;</div>
		</div>
  		</div>
			<div style="clear: both;">&nbsp;</div>
	</div>
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
