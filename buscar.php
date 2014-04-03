<head>
<meta http-equiv="content-type" content="text/html; charset=utf8">
</head>
<?php
include 'datalogin.php';
$sql="SELECT * FROM Hermanos WHERE Nombre like '%".$_GET['nombre']."%' AND Apellidos like '%".$_GET['apellidos']."%' AND FBAJA IS NULL LIMIT 20;";
echo $sql;

$res=mysql_query($sql) or die("<br/><br/>".mysql_error());
while ($row=mysql_fetch_array($res)){
	echo '<option value='.$row['HID'].'>'.$row['Nombre'] . ' ' . $row['Apellidos'] . '</option>';
}
?>
