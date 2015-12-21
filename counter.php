<?
include "./include/conn.php";
$tanggal;
$quey=mysql_db_query($db,"select * from counter",$koneksi);
while ($rows=mysql_fetch_array($quey))
{
	$visit=$rows[1];
}

if ($visit=="")
{
mysql_db_query($db,"insert into counter values('$tanggal',1)",$koneksi);
}

if (!isset($_COOKIE['counter']))
{
	$visit=$visit+1;
	mysql_db_query($db,"update counter set jml='$visit'",$koneksi);
}

?>
