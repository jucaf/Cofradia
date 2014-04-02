<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN">
<html>
	<head>
		<meta charset="ISO-8859-1">	
		<script src="jquery-1.9.1.min.js"></script>
		<script>
		function buscar(){
			$.get('buscar.php?nombre='+document.getElementById("INnombre").value+'&apellidos='+document.getElementById('INapellidos').value ,function(data){
				$('#selHermano').html(data);
			});
		}

		function loadHermano(){
			$.get('loadHermano.php?hid='+document.getElementById("selHermano").value,function(data){
				$('#hermano').html(data);
			});
			$.get('showCargos.php?anno=<?php echo date("Y");?>&hid='+document.getElementById('selHermano').value,function(data){
				$('#cargo').html(data);
			});
		}
		
		</script>
		<!--meta http-equiv="content-type" content="text/html; charset=latin1"-->
		<title>Indice</title>
	</head>
	<body>
	<input type="button" value="Reporte Domingo" onclick="window.open('reportes/reporte_cofradia.php?did=1');"/>
	<input type="button" value="Reporte Viernes" onclick="window.open('reportes/reporte_cofradia.php?did=2');"/>
	<a href="reportes.php">REPORTES</a> 
		<form>
			<div id="filtro">
				Nombre:<input type="text" id='INnombre' value="" onkeyup="buscar();"/><br/>
				Apellidos:<input type="text" id='INapellidos' value="" onkeyup="buscar();"/><br/>
				<select id="selHermano" size=5 onchange="loadHermano()">
				</select>
			</div>
			<div id="hermano">
			</div>		
		<div id="cargo"></div>
		</form>
	</body>
</html>
