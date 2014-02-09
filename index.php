<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN">
<html>
	<head>
		<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
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
		<meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
		<title>Indice</title>
	</head>
	<body>
	<!-- Muestra en una nueva pantalla el reporte total de un determinado día -->
	<input type="button" value="Reporte Domingo" onclick="window.open('reporte.php?did=1');"/>
	<input type="button" value="Reporte Viernes" onclick="window.open('reporte.php?did=2');"/>
	<!-- Campos para el filtrado de hermanos y su seleccion -->
	<form>
		<div id="filtro">
			Nombre:<input type="text" id='INnombre' value="" onkeyup="buscar();"/><br/>
			Apellidos:<input type="text" id='INapellidos' value="" onkeyup="buscar();"/><br/>
			<select id="selHermano" size=5 onchange="loadHermano()">
			</select>
		</div>
		<!-- Div que son modificados dinamicamente. Se carga la lista de hermanos que
		coinciden con los criterios de búsqueda, y luego los cargos disponibles. Si un
		hermano tiene asignado ya un cargo, se muestra ese cargo y no se le puede
		asignar uno nuevo a menos de que se elimine el anterior -->
		<div id="hermano"></div>		
		<div id="cargo"></div>
	</form>
	</body>
</html>