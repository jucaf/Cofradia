<head>
<meta http-equiv="content-type" content="text/html; charset=latin1">
<script>
	function showTramos(pid,did){
		if (pid == -1){
			document.getElementById(did+'_tramos').style.display='';
			document.getElementById(did+'_tramo').disabled=false;
		}
		else{
			document.getElementById(did+'_tramos').style.display='none';
			document.getElementById(did+'_tramo').disabled=true;
		}	
	}

	function register(did,action){
		hid=document.getElementById('selHermano').value;
		if (action=="anular"){
			url='anular.php?hid='+hid+'&pid='+did;
		}
		else {
			pid=document.getElementById(did+'_cargo').value;
			if (pid == -1){
				tramo=document.getElementById(did+'_tramoVisible').value;
				pid=document.getElementById(did+'_'+tramo).value;
			}
			url='print.php?hid='+hid+'&pid='+pid+'&action='+action;
		}
		setTimeout("loadHermano()",500);
		window.open(url);
		window.reload();		
	}
	
	function showParejas(tramo,did){
		tramoVisible=document.getElementById(did+'_tramoVisible').value;
		if (tramoVisible && tramoVisible >0){
			document.getElementById(did+'_'+tramoVisible).style.display='none';
			document.getElementById(did+'_'+tramoVisible).diabled=true;
			
		}
		document.getElementById(did+'_'+tramo).style.display='';
		document.getElementById(did+'_'+tramo).disabled=false;
		document.getElementById(did+'_tramoVisible').value=tramo;
	}
</script>
</head>
<INPUT TYPE="hidden"
	id='1_tramoVisible' value='' />
<INPUT TYPE="hidden"
	id='2_tramoVisible' value='' />
<?php
include 'datalogin.php';

//Warrada para añadir costaleros y penitentes
$sql="SELECT * FROM Puestos WHERE Puestos.cargo = 77 AND Puestos.hid IS NULL;";
$puestos_libres = mysql_query($sql);
if (mysql_num_rows($puestos_libres)<1) 
	mysql_query("INSERT INTO Puestos (anno,tramo,fila,pareja,cargo) VALUES (2014,0,'',1,77);");
        
$sql="SELECT * FROM Puestos WHERE Puestos.cargo = 78 AND Puestos.hid IS NULL;";
$puestos_libres = mysql_query($sql);
if (mysql_num_rows($puestos_libres)<1) 
	mysql_query("INSERT INTO Puestos (anno,tramo,fila,pareja,cargo) VALUES (2014,0,'',1,78);");
        
$sql="SELECT * FROM Puestos WHERE Puestos.cargo = 79 AND Puestos.hid IS NULL;";
$puestos_libres = mysql_query($sql);
if (mysql_num_rows($puestos_libres)<1) 
	mysql_query("INSERT INTO Puestos (anno,tramo,fila,pareja,cargo) VALUES (2014,0,'',1,79);");

        
$sql="SELECT * FROM Puestos WHERE Puestos.cargo = 27 AND Puestos.hid IS NULL;";
$puestos_libres = mysql_query($sql);
if (mysql_num_rows($puestos_libres)<1) 
	mysql_query("INSERT INTO Puestos (anno,tramo,fila,pareja,cargo) VALUES (2014,7,'',1,27);");

$sql="SELECT * FROM Puestos WHERE Puestos.cargo = 28 AND Puestos.hid IS NULL;";
$puestos_libres = mysql_query($sql);
if (mysql_num_rows($puestos_libres)<1) 
	mysql_query("INSERT INTO Puestos (anno,tramo,fila,pareja,cargo) VALUES (2014,7,'',2,28);");
        
$sql="SELECT * FROM Puestos WHERE Puestos.cargo = 56 AND Puestos.hid IS NULL;";
$puestos_libres = mysql_query($sql);
if (mysql_num_rows($puestos_libres)<1) 
	mysql_query("INSERT INTO Puestos (anno,tramo,fila,pareja,cargo) VALUES (2014,7,'',1,56);");
        
$sql="SELECT * FROM Puestos WHERE Puestos.cargo = 57 AND Puestos.hid IS NULL;";
$puestos_libres = mysql_query($sql);
if (mysql_num_rows($puestos_libres)<1) 
	mysql_query("INSERT INTO Puestos (anno,tramo,fila,pareja,cargo) VALUES (2014,7,'',2,57);");
        
$sql="SELECT * FROM Puestos WHERE Puestos.cargo = 71 AND Puestos.hid IS NULL;";
$puestos_libres = mysql_query($sql);
if (mysql_num_rows($puestos_libres)<1) 
	mysql_query("INSERT INTO Puestos (anno,tramo,fila,pareja,cargo) VALUES (2014,11,'',1,71);");
        
$sql="SELECT * FROM Puestos WHERE Puestos.cargo = 72 AND Puestos.hid IS NULL;";
$puestos_libres = mysql_query($sql);
if (mysql_num_rows($puestos_libres)<1) 
	mysql_query("INSERT INTO Puestos (anno,tramo,fila,pareja,cargo) VALUES (2014,11,'',2,72);");
        




$sql="SELECT * FROM Dias";
$res=mysql_query($sql) or die("<br/><br/>".mysql_error());
while ($row=mysql_fetch_array($res)){
	echo '<div id='.$row['did'].' style="vertical-align: top;display:inline-block;width:45%;heidth=200px"><h2>'.$row['desc'].'</h2>';
	$sql="SELECT pid, cid, Cargos.desc, tramo, fila, pareja, Puestos.payDate, hid FROM Puestos INNER JOIN Cargos ON Puestos.cargo=Cargos.cid WHERE hid=".$_GET['hid']." AND anno=".$_GET['anno']." AND dia=".$row['did'].";";
	$cargos=mysql_query($sql) or die("<br/><br/>".mysql_error());
	$num_results = mysql_num_rows($cargos);
	if ($num_results == 0){
		$sql="SELECT MIN(Puestos.pid) as pid,Cargos.cid,Cargos.desc from Cargos INNER JOIN Puestos ON Cargos.cid=Puestos.cargo INNER JOIN Dias ON Cargos.dia=Dias.did WHERE Puestos.anno=".$_GET['anno']." AND Cargos.dia=".$row['did']." AND (Puestos.hid IS NULL OR Puestos.hid <1) GROUP BY Cargos.cid ORDER BY Cargos.desc;";
		$cargos=mysql_query($sql) or die("<br/><br/>".mysql_error());
	}
	else 
		$cargo=mysql_fetch_array($cargos);
	if (!$num_results){
		echo '<SELECT id='.$row['did'].'_cargo onChange="showTramos(this.value,'. $row['did'] . ');"><OPTION></OPTION>';
		while ($cargo=mysql_fetch_array($cargos)){
			if ($cargo['cid'] == 29 || $cargo['cid'] == 73 || $cargo['cid'] == 76)
				echo '<OPTION value=-1>'.$cargo['desc'].'</OPTION>';
			else
				echo '<OPTION value='.$cargo['pid'].'>'.$cargo['desc'].'</OPTION>';
		}
		echo '</SELECT>';	
		echo '<div id='.$row['did'].'_tramos style="display:none">';
		$sql="SELECT * FROM Puestos INNER JOIN Cargos ON Puestos.cargo=Cargos.cid WHERE anno=".$_GET['anno']." AND (hid IS NULL OR hid < 1 ) AND dia=".$row['did']." AND ((tramo>0 AND TRAMO <7) OR (TRAMO > 8 AND TRAMO <12))GROUP BY tramo;";
		$tramos=mysql_query($sql) or die("<br/><br/>".mysql_error());
		echo '<SELECT id='.$row['did'].'_tramo onChange="showParejas(this.value,'. $row['did'] . ');" disabled="disabled"><OPTION></OPTION>';
		while ($tramo=mysql_fetch_array($tramos)){
			echo '<OPTION value='.$tramo['tramo'].'>'.$tramo['tramo'].'</OPTION>';
		}
		echo '</SELECT>';
		$tramos=mysql_query($sql) or die("<br/><br/>".mysql_error());
		while ($tramo=mysql_fetch_array($tramos)){
			$sql="SELECT * FROM Puestos INNER JOIN Cargos ON Puestos.cargo=Cargos.cid WHERE anno=".$_GET['anno']." AND (hid IS NULL OR hid < 1 ) AND dia=".$row['did']." AND tramo=".$tramo['tramo']." AND ( cargo = 29 OR cargo = 73 OR cargo =76) ORDER BY pareja;";
			$parejas=mysql_query($sql) or die("<br/><br/>".mysql_error());
			echo '<SELECT style="display:none" id='.$row['did'].'_'.$tramo['tramo'].' disabled="disabled"><OPTION></OPTION>';
			while ($pareja=mysql_fetch_array($parejas)){
				echo '<OPTION value='.$pareja['pid'].'>'.$pareja['pareja'].'-'.$pareja['fila'].'</OPTION>';
			}
			echo '</SELECT>';
		}
		echo '</div>';
		echo '<input type="button" value="Asignar" onclick="register('.$row['did'].',\'asignar\');">';
		echo '<input type="button" value="Imprimir" onclick="register('.$row['did'].',\'facturar\');">';
	}
	else{
		echo 'Cargo:<INPUT type=text disabled value='.$cargo['desc'].'>';
		if ($cargo['desc']=='Cirio'){
			echo '<br/>Tramo:<INPUT type=text disabled value='.$cargo['tramo'].'><br/>';
			echo 'Orden:<INPUT type=text disabled value='.$cargo['pareja'].'><br/>';
			echo 'Fila:<INPUT type=text disabled value='.$cargo['fila'].'>';
		}
		echo '<input type="button" value="Anular" onclick="register('.$cargo['pid'].',\'anular\');">';
		if (!$cargo['payDate'])
			echo '<input type="button" value="Imprimir" onclick="window.open(\'print.php?pid='.$cargo['pid'].'&action=facturar&hid='.$cargo['hid'].'\');">';
		else
			echo '<input type="button" value="Duplicado" onclick="window.open(\'print.php?pid='.$cargo['pid'].'&action=duplicado&hid='.$cargo['hid'].'\');">';
	}
	echo '</div>';
}
?>
