<?php 
include '../datalogin.php';
$sql="SELECT Hermanos.Nombre as nombre, Hermanos.Apellidos as apellidos, Cargos.desc as cargo, Cargos.precio as precio, Dias.desc as dia, Puestos.tramo as tramo, Puestos.pareja as pareja FROM Cargos INNER JOIN Puestos ON Cargos.cid = Puestos.cargo INNER JOIN Dias ON Cargos.dia = Dias.did INNER JOIN Hermanos ON Hermanos.hid = Puestos.hid WHERE payDate IS NULL AND did=".$_GET['did']." ORDER by tramo,pareja ;";
$res=mysql_query($sql) or die("<br/><br/>".mysql_error());

?>
<table border="1">
	<tr>
		<th>Nombre</th>
		<th>Apellidos</th>
		<th>Dia</th>
		<th>Cargo</th>
		<th>Tramo</th>
		<th>Pareja</th>
	</tr>
        <?while ($row=mysql_fetch_array($res)){?>
	<tr>
		<td><?=$row['nombre']?></td>
		<td><?=$row['apellidos']?></td>
		<td><?=$row['dia']?></td>
		<td><?=$row['cargo']?></td>
		<td><?=$row['tramo']?></td>
		<td><?=$row['pareja']?></td>
	</tr>
	<?}?>	
</table>
<?
?>
