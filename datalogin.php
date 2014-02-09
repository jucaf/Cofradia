<!-- Parámetros de conexión a la BBDD -->
<?php 
// Connects to Our Database 
mysql_connect("localhost","root","1234") or die(mysql_error()); 
mysql_set_charset("iso-8859-1");
mysql_select_db("cofradia") or die(mysql_error());
?> 