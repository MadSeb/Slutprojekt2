<?php

$connection=mysqli_connect("localhost","root","","Prov");
mysqli_select_db($connection,"Prov");

?>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Namnlöst dokument</title>

<link rel="stylesheet" type="text/css" href="style.css">

</head>

<body>
<div>
<h1>Gör inlägg:</h1>

<form action="add.php" method="post">
<p>Ämne:</p>
<input type="text" name="subject">
<p>Sammanfattning:</p>
<textarea type="text" name="text"></textarea>
<p>Namn:</p>
<input type="text" name="name">
<br>
<input type="submit" value="Lägg in">
</form>

<br><br>

<a href="posts.php"><h2>Tidigare inlägg</h2></a>
</div>

</body>
</html>