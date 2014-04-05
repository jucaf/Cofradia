<?php
include 'datalogin.php';
$sql="SELECT *, year(curdate())-year(FNACE) - (dayofyear(curdate()) < dayofyear(FNACE)) as edad FROM Hermanos WHERE HID=".$_GET['hid'].";";
$res=mysql_query($sql) or die($sql."<br/><br/>".mysql_error());
while ($row=mysql_fetch_array($res)){
	echo 'Numero de hermano: ' . $row['NHermano'] . '<br/>Nombre: ' . $row['Nombre'] . ' ' . $row['Apellidos'] .'<br/>Direccion: ' . $row['DIRECCION'] . '<br/>Localidad: ' . $row['POBVIVE'] . '<br/>Edad: ' . $row['edad' ] . ' A&ntilde;os';
}
?>
