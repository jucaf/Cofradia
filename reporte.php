<?php
include 'datalogin.php';
	$did=$_GET['did'];	
	$sql="SELECT Puestos.hid as hid, Hermanos.Nombre as Nombre, Hermanos.Apellidos as Apellidos, Hermanos.NHermano as Antiguedad, Cargos.desc as cargo, Puestos.tramo as tramo, Puestos.pareja as pareja, Puestos.fila as fila FROM Puestos INNER JOIN Cargos ON Puestos.cargo=Cargos.cid LEFT JOIN Hermanos ON Puestos.hid=Hermanos.HID INNER JOIN Dias ON Cargos.dia = Dias.did WHERE anno=".date("Y")." AND Cargos.dia=".$did." ORDER BY tramo, pareja;";
	$res=mysql_query($sql);
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
		$cargo=$row['cargo'];
		if ($cargo != "Cirio"){
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
	echo '</div></div>';
?>
