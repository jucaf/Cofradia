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

	function register(did){
		pid=document.getElementById(did+'_cargo').value;
		if (pid == -1){
			tramo=document.getElementById(did+'_tramoVisible').value;
			pid=document.getElementById(did+'_'+tramo).value;
		}
		url='print.php?hid='+document.getElementById('selHermano').value+'&pid='+pid;
		setTimeout("loadHermano()",3000);
		window.open(url);		
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
<INPUT TYPE="hidden"
	id='1_tramoVisible' value='' />
<INPUT TYPE="hidden"
	id='2_tramoVisible' value='' />
<?php
include 'datalogin.php';
$sql="SELECT * FROM Dias";
$res=mysql_query($sql);
while ($row=mysql_fetch_array($res)){
	echo '<div id='.$row['did'].' style="vertical-align: top;display:inline-block;width:45%;heidth=200px"><h2>'.$row['desc'].'</h2>';
	$sql="SELECT pid, cid, Cargos.desc, tramo, fila, pareja FROM Puestos INNER JOIN Cargos ON Puestos.cargo=Cargos.cid WHERE hid=".$_GET['hid']." AND anno=".$_GET['anno']." AND dia=".$row['did'].";";
	$cargos=mysql_query($sql);
	$num_results = mysql_num_rows($cargos);
	if ($num_results == 0){
		$sql="SELECT Puestos.pid,Cargos.cid,Cargos.desc from Cargos INNER JOIN Puestos ON Cargos.cid=Puestos.cargo INNER JOIN Dias ON Cargos.dia=Dias.did WHERE Puestos.anno=".$_GET['anno']." AND Cargos.dia=".$row['did']." AND (Puestos.hid IS NULL OR Puestos.hid <1) GROUP BY Cargos.cid;";
		$cargos=mysql_query($sql);
	}
	else 
		$cargo=mysql_fetch_array($cargos);
	if (!$num_results){
		echo '<SELECT id='.$row['did'].'_cargo onChange="showTramos(this.value,'. $row['did'] . ');"><OPTION></OPTION>';
		while ($cargo=mysql_fetch_array($cargos)){
			if ($cargo['cid'] == 29 || $cargo['cid'] == 79)
				echo '<OPTION value=-1>'.$cargo['desc'].'</OPTION>';
			else
				echo '<OPTION value='.$cargo['pid'].'>'.$cargo['desc'].'</OPTION>';
		}
		echo '</SELECT>';	
		echo '<div id='.$row['did'].'_tramos style="display:none">';
		$sql="SELECT * FROM Puestos INNER JOIN Cargos ON Puestos.cargo=Cargos.cid WHERE anno=".$_GET['anno']." AND (hid IS NULL OR hid < 1 ) AND dia=".$row['did']." AND tramo>0 GROUP BY tramo;";
		$tramos=mysql_query($sql);
		echo '<SELECT id='.$row['did'].'_tramo onChange="showParejas(this.value,'. $row['did'] . ');" disabled="disabled"><OPTION></OPTION>';
		while ($tramo=mysql_fetch_array($tramos)){
			echo '<OPTION value='.$tramo['tramo'].'>'.$tramo['tramo'].'</OPTION>';
		}
		echo '</SELECT>';
		$tramos=mysql_query($sql);
		while ($tramo=mysql_fetch_array($tramos)){
			$sql="SELECT * FROM Puestos INNER JOIN Cargos ON Puestos.cargo=Cargos.cid WHERE anno=".$_GET['anno']." AND (hid IS NULL OR hid < 1 ) AND dia=".$row['did']." AND tramo=".$tramo['tramo']." ORDER BY pareja;";
			$parejas=mysql_query($sql);
			echo '<SELECT style="display:none" id='.$row['did'].'_'.$tramo['tramo'].' disabled="disabled"><OPTION></OPTION>';
			while ($pareja=mysql_fetch_array($parejas)){
				echo '<OPTION value='.$pareja['pid'].'>'.$pareja['pareja'].'-'.$pareja['fila'].'</OPTION>';
			}
			echo '</SELECT>';
		}
		echo '</div>';
		echo '<input type="button" value="Imprimir" onclick="register('.$row['did'].');">';
	}
	else{
		echo 'Cargo:<INPUT type=text disabled value='.$cargo['desc'].'>';
		if ($cargo['desc']=='Cirio'){
			echo '<br/>Tramo:<INPUT type=text disabled value='.$cargo['tramo'].'><br/>';
			echo 'Orden:<INPUT type=text disabled value='.$cargo['pareja'].'><br/>';
			echo 'Fila:<INPUT type=text disabled value='.$cargo['fila'].'>';
		}
		echo '<input type="button" value="Anular" onclick="window.location=\'anular.php?pid='.$cargo['pid'].'\';">';
		echo '<input type="button" value="Imprimir" onclick="window.open(\'print.php?pid='.$cargo['pid'].'\');">';
	}
	echo '</div>';
}
?>