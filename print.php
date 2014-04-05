<?php
require_once('lib/config/lang/eng.php');
require_once('lib/tcpdf.php');
include 'datalogin.php';
// Hacemos la asignacion del cargo y contabilizamos el pago cuando es necesario
// Antes de hacer la facturacion debemos de calcular si es facturable o no
// Para ello primero hacemos una busqueda con el hermano, comparando las otras
// papeletas de sitio asignadas a el y ponemos a false la no facturable.
$pid = $_GET['pid'];
$hid = $_GET['hid'];
$action = $_GET['action'];
$update = "";
switch ($action){
	case "facturar":
		$update = "payDate='".date('Y-m-d')."', ";
	case "asignar":
		// 1 obtenemos el precio de la nueva papeleta
		$sql="SELECT Cargos.precio as precio FROM Cargos INNER JOIN Puestos ON Cargos.cid = Puestos.cargo WHERE Puestos.pid = $pid;";
		$res=mysql_query($sql) or die($sql."<br/><br/>".mysql_error()) ;
		$row=mysql_fetch_array($res) or die($sql."<br/><br/>".mysql_error());
		$precio = $row['precio'];
		// 2 Buscamos si hay alguna papeleta con mayor precio ya asignada
		$sql = "SELECT Cargos.cid as cid FROM Cargos INNER JOIN Puestos ON Cargos.cid = Puestos.cargo WHERE Puestos.hid = $hid AND anno = ".date('Y')." AND Cargos.precio >= $precio AND pid != $pid;";
		$res=mysql_query($sql) or die($sql."<br/><br/>".mysql_error()) ;
		$count = mysql_num_rows($res);
		if ( $count > 0) {
			// Si hay alguna con precio mayor o igual facturable, esta no nueva no debemo de cobrarla
			$facturable=0;
		} else {
			// Si esta es la de mayor precio, debemos de quitar de facturables a las demas
			$facturable=1;
			$sql = "UPDATE Puestos SET facturable = 0 WHERE hid = $hid AND pid != $pid AND anno = ".date('Y').";";
			mysql_query($sql) or die($sql."<br/><br/>".mysql_error());
		}
		$update = $update." hid=".$hid.", facturable=".$facturable;
		$sql="UPDATE Puestos SET ".$update." WHERE pid=".$pid.";";
		mysql_query($sql) or die($sql."<br/><br/>".mysql_error());

		break;
}

if ($action == "facturar" || $action == "duplicado"){
	$sql="SELECT Hermanos.Nombre as nombre, Hermanos.Apellidos as apellidos, Cargos.desc as cargo, Cargos.paso as paso, Cargos.precio as precio, Hermanos.NHermano as antiguedad, Dias.desc as dia, Dias.hora as hora, Puestos.tramo as tramo, Puestos.fila as fila, Puestos.pareja as orden FROM Puestos INNER JOIN Cargos ON Puestos.cargo=Cargos.cid INNER JOIN Dias ON Cargos.dia=Dias.did INNER JOIN Hermanos ON Puestos.hid=Hermanos.hid WHERE pid=".$pid.";";
	$res=mysql_query($sql) or die($sql."<br/><br/>".mysql_error()) ;
	$row=mysql_fetch_array($res);

	// create new PDF document
	$pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);
	//$pdf = new TCPDF('P', 'mm', array(209, 300), false, 'ISO-8859-1', false);

	// set document information
	$pdf->SetCreator(PDF_CREATOR);
	$pdf->SetAuthor('Juan Carlos Fernandez');
	$pdf->SetTitle('Papeleta');
	$pdf->SetSubject('');
	$pdf->SetKeywords('TCPDF, PDF, example, test, guide');

	// set default header data
	$pdf->setPrintHeader(false);
	$pdf->setPrintFooter(false);

	// set default monospaced font
	$pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);

	//set margins
	$pdf->SetMargins(0, 0, 0);

	//set auto page breaks
	$pdf->SetAutoPageBreak(true, 40);

	//set image scale factor
	$pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);

	//set some language-dependent strings
	$pdf->setLanguageArray($l);

	// $pdf->SetFont('dejavusans', '', 14, '', true);
	$pdf->SetFont('times', 'BI', 12);

	// Add a page
	// This method has several options, check the source code documentation for more information.
	$pdf->AddPage();
	$pdf->MultiCell(80, 7, $row['nombre'], 0, 'L', 0, 0, '25', '23', false, 0, false, true, 0);
	$pdf->MultiCell(90, 7, $row['apellidos'], 0, 'L', 0, 0, '25', '31', false, 0, false, true, 0);
	$pdf->MultiCell(90, 7, $row['cargo'], 0, 'C', 0, 0, '5', '47', false, 0, false, true, 0);
	$pdf->MultiCell(90, 7, $row['dia'], 0, 'C', 0, 0, '5', '66', false, 0, false, true, 0);
	$pdf->MultiCell(45, 7, $row['paso'], 0, 'L', 0, 0, '45', '76', false, 0, false, true, 0);
	$pdf->MultiCell(45, 7, $row['tramo'], 0, 'L', 0, 0, '50', '86', false, 0, false, true, 0);
	$pdf->MultiCell(45, 7, $row['fila'], 0, 'L', 0, 0, '50', '97', false, 0, false, true, 0);
	$pdf->MultiCell(45, 7, $row['orden'], 0, 'L', 0, 0, '50', '107', false, 0, false, true, 0);
	$pdf->MultiCell(45, 7, $row['antiguedad'], 0, 'L', 0, 0, '50', '117', false, 0, false, true, 0);
	$pdf->MultiCell(45, 7, $row['precio'], 0, 'L', 0, 0, '50', '129', false, 0, false, true, 0);
	$pdf->MultiCell(45, 7, date('d-m-Y'), 0, 'L', 0, 0, '50', '138', false, 0, false, true, 0);

	$pdf->MultiCell(90, 0, $row['nombre'], 0, 'L', 0, 0, '122', '23', false, 0, false, true, 0);
	$pdf->MultiCell(90, 0, $row['apellidos'], 0, 'L', 0, 0, '115', '33', false, 0, false, true, 0);
	$pdf->MultiCell(50, 7, $row['dia'], 0, 'C', 0, 0, '134', '49', false, 0, false, true, 0);
	$pdf->MultiCell(70, 7, $row['cargo'], 0, 'C', 0, 0, '111', '55', false, 0, false, true, 0);
	$pdf->MultiCell(20, 7, $row['hora'], 0, 'C', 0, 0, '154', '61', false, 0, false, true, 0);
	$pdf->MultiCell(45, 7, $row['paso'], 0, 'L', 0, 0, '145', '71', false, 0, false, true, 0);
	$pdf->MultiCell(45, 7, $row['tramo'], 0, 'L', 0, 0, '145', '81', false, 0, false, true, 0);
	$pdf->MultiCell(45, 7, $row['fila'], 0, 'L', 0, 0, '145', '91', false, 0, false, true, 0);
	$pdf->MultiCell(45, 7, $row['orden'], 0, 'L', 0, 0, '145', '102', false, 0, false, true, 0);
	$pdf->MultiCell(45, 7, $row['antiguedad'], 0, 'L', 0, 0, '145', '112', false, 0, false, true, 0);
	$pdf->MultiCell(45, 7, $row['precio'], 0, 'L', 0, 0, '152', '123', false, 0, false, true, 0);
	$pdf->MultiCell(45, 7, date('d-m-Y'), 0, 'L', 0, 0, '145', '138', false, 0, false, true, 0);
	
	$pdf->lastPage();

	// This method has several options, check the source code documentation for more information.
	$pdf->Output('example_001.pdf', 'I');
}
else 
	echo "<script type='text/javascript'>self.close();</script>";
?>
