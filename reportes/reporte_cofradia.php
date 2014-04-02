<head>
<meta http-equiv="content-type" content="text/html; charset=latin1">
</head>
<?php
	include '../datalogin.php';
	$did=$_GET['did'];
	if (isset($_GET['tramo']))
		$sql_tramo=" AND tramo=".$_GET['tramo']." ";
	$sql="SELECT Puestos.hid as hid, Hermanos.Nombre as Nombre, Hermanos.Apellidos as Apellidos, Hermanos.NHermano as Antiguedad, Cargos.desc as cargo, Puestos.tramo as tramo, Puestos.pareja as pareja, Puestos.fila as fila, Cargos.cid as cid FROM Puestos INNER JOIN Cargos ON Puestos.cargo=Cargos.cid LEFT JOIN Hermanos ON Puestos.hid=Hermanos.HID INNER JOIN Dias ON Cargos.dia = Dias.did WHERE anno=".date("Y")." AND Cargos.dia=$did $sql_tramo ORDER BY tramo, pareja, cid;";
	$res=mysql_query($sql) or die("<br/><br/>".mysql_error());
	$tramoAnt=-1;
	while ($row=mysql_fetch_array($res)){
		$tramo=$row['tramo'];
		if ($row['tramo'] != $tramoAnt){
			if ($tramoAnt != -1)
				echo '</div></div>';
			$tramoAnt=$tramo;
			$parejaAnt=-1;
			echo '<div style="vertical-align: top;display:inline-block;width:100%;"><h3>Tramo'.$tramo.'</h3>';
		}
		$pareja=$row['pareja'];
		if ($pareja!=$parejaAnt){
			if ($parejaAnt != -1)
				echo '</div>';
			$parejaAnt=$pareja;
			echo '<div style="display:block;width:100%;">';
		}
		$fila=$row['fila'];
		$cid=$row['cid'];
		$cargo=$row['cargo'];
		if (!(($cid >=77 OR $cid == 27 OR $cid == 28 OR $cid == 56 OR $cid == 57 OR $cid == 71 OR $cid == 72) AND ($row['hid'] == null))){
		// if ($cargo != "Cirio" && $cargo != "Cirio Senor" && $cargo != "Cirio Virgen"){
			if ($cid != 29 && $cid != 73 && $cid != 76){
				echo '<div style="display:inline-block;align: center;width:100%;">';
				echo '<b>'.$cargo.' </b>';
			}
			else{
				if($fila=='Izquierda'){
					echo '<div style="display:inline-block;float: left;width:50%;">';
				}
				else if($fila=='Derecha'){
					echo '<div style="display:inline-block;float: right;width:50%;">';
				}
				echo $pareja.'-';
			}
			if ($row['hid']==null)
				echo 'VACIO';
			else 
				echo $row['Nombre'].' '.$row['Apellidos'].' '.$row['Antiguedad'].' ';
			echo '</div>';
		}		
	}
	echo '</div></div>';
?>
