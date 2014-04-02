<?php
include 'datalogin.php';
$pasoid = $_GET['pasoid'];
if ($pasoid==1)
	$sql = "INSERT INTO Puestos (anno,tramo,fila,pareja,cargo,precio) VALUES (2014,0,'',1,79,6.00);";
if ($pasoid==2)
	$sql = "INSERT INTO Puestos (anno,tramo,fila,pareja,cargo,precio) VALUES (2014,0,'',1,77,6.00);";
if ($pasoid==3)
	$sql = "INSERT INTO Puestos (anno,tramo,fila,pareja,cargo,precio) VALUES (2014,0,'',1,78,6.00);";
mysql_query($sql);
echo '<HEAD><meta HTTP-EQUIV="REFRESH" content="0; url=/cofradia"></HEAD>'
?>
