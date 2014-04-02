<?php
include 'datalogin.php';
$html =  '';
$pid = $_GET['pid'];
$sql="SELECT Hermanos.Nombre as nombre, Hermanos.Apellidos as apellidos, Cargos.desc as cargo,Hermanos.NHermano as antiguedad, Dias.desc as dia, Puestos.tramo as tramo, Puestos.fila as fila, Puestos.pareja as orden, Cargos.precio as precio FROM Puestos INNER JOIN Cargos ON Puestos.cargo=Cargos.cid INNER JOIN Dias ON Cargos.dia=Dias.did INNER JOIN Hermanos ON Puestos.hid=Hermanos.hid WHERE pid=".$pid.";";
$res=mysql_query($sql) or die("<br/><br/>".mysql_error());
$row=mysql_fetch_array($res);
$html='<div id="container" style="display:block"><div id="left" style="display:inline;float:left;width:45%">'.$row['nombre'].' '.$row['apellidos'].'<br/>';
$html=$html.$row['cargo'].'<br/>';
$html=$html.$row['dia'].'<br/>';
$html=$html.$row['tramo'].'<br/>';
$html=$html.$row['fila'].'<br/>';
$html=$html.$row['orden'].'<br/>';
$html=$html.$row['antiguedad'].'<br/>';
$html=$html.$row['precio'].'<br/></div>';
$html=$html.'<div id="right" style="display:inline;float:left;width:45%">'.$row['nombre'].' '.$row['apellidos'].'<br/>';
$html=$html.$row['cargo'].'<br/>';
$html=$html.$row['dia'].'<br/>';
$html=$html.$row['tramo'].'<br/>';
$html=$html.$row['fila'].'<br/>';
$html=$html.$row['orden'].'<br/>';
$html=$html.$row['antiguedad'].'<br/>';
$html=$html.$row['precio'].'<br/></div></div>';
echo $html;
?>
