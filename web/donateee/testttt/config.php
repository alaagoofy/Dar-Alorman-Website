<?php

header("Content-Type:text/html;charset=windows-1256;");
error_reporting(E_USER_ERROR);
$db_host='localhost';
$db_user='alaa';
$all='new_dar';
$db_pass='920956';
$con=mysql_connect($db_host,$db_user,$db_pass) OR die("<br><br><br>ERROR IN CONNECT");
mysql_query("SET character_set_client=cp1256");
mysql_query("SET character_set_connection=cp1256");
mysql_query("SET character_set_database=cp1256");
mysql_query("SET character_set_results=cp1256");
mysql_query("SET character_set_server=cp1256");
mysql_query("set names= 'cp1256'");
mysql_select_db($all);
$sitename="http://dar-alorman.com/donate";
date_default_timezone_set ('Africa/Cairo');
?>