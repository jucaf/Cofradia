<!-- Lee el id del puesto y elimina el hermano asociado al puesto 
Esta en una página aparte para hacer una llamada dinámica-->
<?php
//MySQL Database Connect
include 'datalogin.php';
$pid = $_GET['pid'];
$sql = "UPDATE Puestos SET hid=NULL WHERE pid=".$_GET['pid'].";";
mysql_query($sql);
echo '<HEAD><meta HTTP-EQUIV="REFRESH" content="0; url=/cofradia"></HEAD>'
?>