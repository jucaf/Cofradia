<!-- Esta es la pagina que genera el pdf para ser impreso como la papeleta de sitio.
Está formateado adecuadamente para entrar en los huecos. La unica forma que encontre 
para formatearlo bien fue por prueba y error, miendo y modificando. Heredia seguro
ue se acuerda porque lo estaba haciendo en remoto -->
<?php
include 'datalogin.php';
require_once('lib/config/lang/eng.php');
require_once('lib/tcpdf.php');

// create new PDF document
$pdf = new TCPDF('P', 'mm', array(209, 200), false, 'ISO-8859-1', false);
//$pdf->setEqualColumns(2);
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

// ---------------------------------------------------------

// set default font subsetting mode
// $pdf->setFontSubsetting(true);

// Set font
// dejavusans is a UTF-8 Unicode font, if you only need to
// print standard ASCII chars, you can use core fonts like
// helvetica or times to reduce file size.
// $pdf->SetFont('dejavusans', '', 14, '', true);
$pdf->SetFont('times', 'BI', 12);

// Add a page
// This method has several options, check the source code documentation for more information.
$pdf->AddPage();

// set text shadow effect
// $pdf->setTextShadow(array('enabled'=>true, 'depth_w'=>0.2, 'depth_h'=>0.2, 'color'=>array(196,196,196), 'opacity'=>1, 'blend_mode'=>'Normal'));

// Set some content to print
$pid = $_GET['pid'];
$sql="SELECT hid FROM Puestos WHERE pid=".$pid;
$res=mysql_query($sql);
$row=mysql_fetch_array($res);
$num_results = mysql_num_rows($row);
if ($num_results == 0){
	$sql="UPDATE Puestos SET hid=".$_GET['hid']." WHERE pid=".$pid.";";
	mysql_query($sql);
}
$sql="SELECT Hermanos.Nombre as nombre, Hermanos.Apellidos as apellidos, Cargos.desc as cargo, Cargos.paso as paso, Cargos.hora as hora,Hermanos.NHermano as antiguedad, Dias.desc as dia, Puestos.tramo as tramo, Puestos.fila as fila, Puestos.pareja as orden, Puestos.precio as precio FROM Puestos INNER JOIN Cargos ON Puestos.cargo=Cargos.cid INNER JOIN Dias ON Cargos.dia=Dias.did INNER JOIN Hermanos ON Puestos.hid=Hermanos.hid WHERE pid=".$pid.";";
$res=mysql_query($sql);
$row=mysql_fetch_array($res);

$pdf->MultiCell(80, 7, $row['nombre'], 0, 'L', 0, 0, '25', '30', false, 0, false, true, 0);
$pdf->MultiCell(90, 7, $row['apellidos'], 0, 'L', 0, 0, '25', '38', false, 0, false, true, 0);
$pdf->MultiCell(90, 7, $row['cargo'], 0, 'C', 0, 0, '5', '54', false, 0, false, true, 0);
$pdf->MultiCell(90, 7, $row['dia'], 0, 'C', 0, 0, '5', '71', false, 0, false, true, 0);
$pdf->MultiCell(45, 7, $row['paso'], 0, 'L', 0, 0, '45', '81', false, 0, false, true, 0);
$pdf->MultiCell(45, 7, $row['tramo'], 0, 'L', 0, 0, '50', '89', false, 0, false, true, 0);
$pdf->MultiCell(45, 7, $row['fila'], 0, 'L', 0, 0, '50', '100', false, 0, false, true, 0);
$pdf->MultiCell(45, 7, $row['orden'], 0, 'L', 0, 0, '50', '107', false, 0, false, true, 0);
$pdf->MultiCell(45, 7, $row['antiguedad'], 0, 'L', 0, 0, '50', '117', false, 0, false, true, 0);
$pdf->MultiCell(45, 7, $row['precio'], 0, 'L', 0, 0, '50', '127', false, 0, false, true, 0);

$pdf->MultiCell(90, 0, $row['nombre'], 0, 'L', 0, 0, '122', '30', false, 0, false, true, 0);
$pdf->MultiCell(90, 0, $row['apellidos'], 0, 'L', 0, 0, '115', '40', false, 0, false, true, 0);
$pdf->MultiCell(50, 7, $row['dia'], 0, 'C', 0, 0, '129', '56', false, 0, false, true, 0);
$pdf->MultiCell(70, 7, $row['cargo'], 0, 'C', 0, 0, '111', '61', false, 0, false, true, 0);
$pdf->MultiCell(20, 7, $row['hora'], 0, 'C', 0, 0, '151', '68', false, 0, false, true, 0);
$pdf->MultiCell(45, 7, $row['paso'], 0, 'L', 0, 0, '145', '77', false, 0, false, true, 0);
$pdf->MultiCell(45, 7, $row['tramo'], 0, 'L', 0, 0, '145', '85', false, 0, false, true, 0);
$pdf->MultiCell(45, 7, $row['fila'], 0, 'L', 0, 0, '145', '94', false, 0, false, true, 0);
$pdf->MultiCell(45, 7, $row['orden'], 0, 'L', 0, 0, '145', '104', false, 0, false, true, 0);
$pdf->MultiCell(45, 7, $row['antiguedad'], 0, 'L', 0, 0, '145', '113', false, 0, false, true, 0);
$pdf->MultiCell(45, 7, $row['precio'], 0, 'L', 0, 0, '145', '123', false, 0, false, true, 0);



$pdf->lastPage();
// ---------------------------------------------------------

// Close and output PDF document
// This method has several options, check the source code documentation for more information.
$pdf->Output('example_001.pdf', 'I');

//============================================================+
// END OF FILE
//============================================================+