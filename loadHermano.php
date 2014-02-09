<!-- Genera el contenido del campo Nombrre de hermano tras ser filtrado -->
<?php
include 'datalogin.php';
$sql="SELECT * FROM Hermanos WHERE HID=".$_GET['hid'].";";
$res=mysql_query($sql);
while ($row=mysql_fetch_array($res)){
	echo $row['Nombre'] . ' ' . $row['Apellidos'];
}
?>