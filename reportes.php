<HTML>
<head>
<link rel="stylesheet" type="text/css" href="css/jquery-ui-1.7.2.custom.css">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.7.2/jquery-ui.min.js"></script>
<script type="text/javascript">
jQuery(function($){
      $.datepicker.regional['es'] = {
            closeText: 'Cerrar',
            prevText: '&#x3c;Ant',
            nextText: 'Sig&#x3e;',
            currentText: 'Hoy',
            monthNames: ['Enero','Febrero','Marzo','Abril','Mayo','Junio',
            'Julio','Agosto','Septiembre','Octubre','Noviembre','Diciembre'],
            monthNamesShort: ['Ene','Feb','Mar','Abr','May','Jun',
            'Jul','Ago','Sep','Oct','Nov','Dic'],
            dayNames: ['Domingo','Lunes','Martes','Mi&eacute;rcoles','Jueves','Viernes','S&aacute;bado'],
            dayNamesShort: ['Dom','Lun','Mar','Mi&eacute;','Juv','Vie','S&aacute;b'],
            dayNamesMin: ['Do','Lu','Ma','Mi','Ju','Vi','S&aacute;'],
            weekHeader: 'Sm',
            dateFormat: 'yy-mm-dd',
            firstDay: 1,
            isRTL: false,
            showMonthAfterYear: false,
            yearSuffix: ''};
      $.datepicker.setDefaults($.datepicker.regional['es']);
});    

$(document).ready(function() {
   $("#dateIni").datepicker();
});


$(document).ready(function() {
   $("#dateEnd").datepicker();
});
</script>

</head>
<body>
Selecciona las fechas entre las que se desea mostrar la facturacion:
<form action="./reportes/reporte_facturado.php?range=custom" method="get">
  <label> Seleccionar Fecha Inicio:</label>
  <input type="text" name="dateIni" id="dateIni" readonly="readonly" size="12" />
  <label> Seleccionar Fecha Fin:</label>
  <input type="text" name="dateEnd" id="dateEnd" readonly="readonly" size="12" />
  <input type="hidden" name="range" id="range" value="custom"/>
  <input type="submit" value="Muestra facturado"> 
</form>

<a href='./reportes/reporte_cofradia.php?did=1'>Organizacion Domingo de Ramos</a><br/>
<a href='./reportes/reporte_cofradia.php?did=2'>Organizacion Viernes Santo</a><br/>

<form metod="get" action='./reportes/reporte_cofradia.php'>
<input type="hidden" name="did" value=1 /> 
Mostrar tramo  
<SELECT name=tramo onchange="this.form.submit()">
	<OPTION></OPTION>
	<OPTION>1</OPTION>
	<OPTION>2</OPTION>
	<OPTION>3</OPTION>
	<OPTION>4</OPTION>
	<OPTION>5</OPTION>
	<OPTION>6</OPTION>
	<OPTION>7</OPTION>
</SELECT>
del Domingo de Ramos
</form>

<form metod="get" action='./reportes/reporte_cofradia.php'>
<input type="hidden" name="did" value=2 /> 
Mostrar tramo  
<SELECT name=tramo onchange="this.form.submit()">
	<OPTION></OPTION>
	<OPTION>1</OPTION>
	<OPTION>2</OPTION>
	<OPTION>3</OPTION>
	<OPTION>4</OPTION>
	<OPTION>5</OPTION>
	<OPTION>6</OPTION>
	<OPTION>7</OPTION>
	<OPTION>8</OPTION>
	<OPTION>9</OPTION>
	<OPTION>10</OPTION>
</SELECT>
del Viernes Santo
</form>

</body>
</HTML>
