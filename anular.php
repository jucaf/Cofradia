<?php
include 'datalogin.php';
$hid = $_GET['hid'];
$pid = $_GET['pid'];
$sql = "UPDATE Puestos SET hid=NULL, payDate=NULL WHERE pid=".$_GET['pid'].";";
mysql_query($sql) or die("<br/><br/>".mysql_error());
$sql = "SELECT pid FROM Puestos WHERE anno = ".date('Y')." AND hid = $hid;";
$res=mysql_query($sql) or die("<br/><br/>".mysql_error());
if ( mysql_num_rows($res) > 0 ){
	$sql = "UPDATE Puestos SET facturable = 1 WHERE hid = $hid;";
	mysql_query($sql) or die("<br/><br/>".mysql_error());
}
// Tenemos que buscar si el hermano al que se le ha borrado el cargo tiene otros cargos
// y comprobar que al menos uno de ellos es facturable, en caso contrario debemos de
// asignar uno de los que tengan mayor precio como facturable
//$sql="SELECT MAX(facturable) as facturable FROM Puestos WHERE hid = ".$hid." AND anno = ".date('Y').";";
//$res=mysql_query($sql) or die("<br/><br/>".mysql_error());
//$row=mysql_fetch_array($res);
//if (!$row['facturable']){
//	$sql="SELECT MAX(precio) as max_precio FROM Puestos INNER JOIN Cargos ON Puestos.cargo = Cargos.cid WHERE hid = ".$hid." AND anno = ".date('Y').";";
//	$res=mysql_query($sql) or die("<br/><br/>".mysql_error());
//	if ($res['max_precio'] != NULL){
//		$row=mysql_fetch_array($res);
//		$max_precio=$row['max_precio'];
//		$sql="SELECT pid FROM Puestos INNER JOIN Cargos ON Puestos.cargo = Cargos.cid WHERE hid = ".$hid." AND anno = ".date('Y')." AND precio = ".$max_precio.";";
//		$res=mysql_query($sql) or die("<br/><br/>".mysql_error());
//		$row=mysql_fetch_array($res);
//		$new_facturable_pid=$row['pid'];
//		$sql="UPDATE Puestos SET facturable = 1 WHERE pid = ".$new_facturable_pid.";";
//		$res=mysql_query($sql) or die("<br/><br/>".mysql_error());	
//	}
//}
//
//	echo $sql."<br/>";
echo "<script type='text/javascript'>self.close();</script>";
?>
