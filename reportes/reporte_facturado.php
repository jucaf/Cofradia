<?php 
include '../datalogin.php';
switch($_GET['range']){
	case 'hoy':
		$inicio=date('Y-m-d');
		$fin=date('Y-m-d', strtotime(' +1 day'));
		break;
	case 'total':
		$inicio=date('Y')."-01-01";
		$fin=date('Y')."-12-31";
		break;
	case 'custom':
		$inicio=$_GET['inicio'];
		$fin=$_GET['fin'];
		break;	
}
$sql="SELECT SUM(precio) as total FROM Puestos INNER JOIN Cargos ON Puestos.cargo=Cargos.cid WHERE payDate BETWEEN '$inicio' AND '$fin' AND facturable AND hid IS NOT NULL";
$res=mysql_query($sql) or die("<br/><br/>".mysql_error());
$total=mysql_fetch_array($res);
$sql="SELECT Hermanos.Nombre as nombre, Hermanos.Apellidos as apellidos, Cargos.desc as cargo, Cargos.precio as precio, Dias.desc as dia, Puestos.payDate as fecha, Puestos.facturable as facturable FROM Cargos INNER JOIN Puestos ON Cargos.cid = Puestos.cargo INNER JOIN Dias ON Cargos.dia = Dias.did INNER JOIN Hermanos ON Hermanos.hid = Puestos.hid WHERE payDate BETWEEN '$inicio' AND '$fin' ORDER BY payDate;";
$res=mysql_query($sql) or die("<br/><br/>".mysql_error());

?>
<b>Fecha inicio: </b><?=$inicio?><br/>
<b>Fecha fin: </b><?=$fin?></br>
TOTAL :<b><?=$total['total']?></b><br/>
<table border="1">
	<tr>
		<th>Nombre</th>
		<th>Apellidos</th>
		<th>Cargo</th>
		<th>Dia</th>
		<th>Precio</th>
		<th>Fecha</th>
	</tr>
        <?while ($row=mysql_fetch_array($res)){?>
	<tr>
		<td><?=$row['nombre']?></td>
		<td><?=$row['apellidos']?></td>
		<td><?=$row['cargo']?></td>
		<td><?=$row['dia']?></td>
		<td><?=($row['facturable'] ? $row['precio'] : '0.00')?></td>
		<td><?=$row['fecha']?></td>
	</tr>
	<?}?>	
</table>
<?
?>
