<?php
include 'datalogin.php';
$sql="SELECT * FROM Hermanos WHERE HID=".$_GET['hid'].";";
$res=mysql_query($sql) or die($sql."<br/><br/>".mysql_error());
while ($row=mysql_fetch_array($res)){
	echo 'Numero de hermano: ' . $row['NHermano'] . '<br/>Nombre: ' . $row['Nombre'] . ' ' . $row['Apellidos'] .'<br/>Direccion: ' . $row['DIRECCION'] . '<br/>Localidad: ' . $row['POBVIVE'];
}
?>
