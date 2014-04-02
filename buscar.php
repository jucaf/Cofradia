<head>
<meta http-equiv="content-type" content="text/html; charset=latin1">
</head>
<?php
include 'datalogin.php';
$sql="SELECT * FROM Hermanos WHERE Nombre like '%".$_GET['nombre']."%' AND Apellidos like '%".$_GET['apellidos']."%' AND FBAJA = '0000-00-00 00:00:00' LIMIT 20;";
$res=mysql_query($sql) or die("<br/><br/>".mysql_error());
while ($row=mysql_fetch_array($res)){
	echo '<option value='.$row['HID'].'>'.$row['Nombre'] . ' ' . $row['Apellidos'] . '</option>';
}
?>
