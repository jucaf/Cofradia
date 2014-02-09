<!-- Hace el filtrado para la búsqueda de hermanos.
Usa una página aparte para hacer un filtrado dinámico sin requerir
pulsar buscar, solo escribes y te filtra. Solo muestra los 10 primeros
resultados. El filtrado lo hace buscando una determinada cadena en el 
nombre o apellidos. -->
<?php
//MySQL Database Connect
include 'datalogin.php';
$sql="SELECT * FROM Hermanos WHERE Nombre like '%".$_GET['nombre']."%' AND Apellidos like '%".$_GET['apellidos']."%' AND FBAJA = '0000-00-00 00:00:00' LIMIT 10;";
$res=mysql_query($sql);
while ($row=mysql_fetch_array($res)){
	echo '<option value='.$row['HID'].'>'.$row['Nombre'] . ' ' . $row['Apellidos'] . '</option>';
}
?>