<?php

$connection=mysqli_connect("localhost","root","","Prov");
mysqli_select_db($connection,"Prov");

?>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Tidigare inlägg</title>

<link rel="stylesheet" type="text/css" href="style.css">

</head>

<body>
<div>
<?php

$query="SELECT * FROM summary ORDER BY summary_date DESC";
$result=mysqli_query($connection,$query);

while($row=mysqli_fetch_array($result)){
	
	echo '<h3>' . $row['summary_subject'] . '</h3>' . '<p>' . $row['summary_text'] . '</p>' . '<p>' . $row['summary_name'] . '<br>' . $row['summary_date'] . '</p>' . '<br>';
	
}

?>

<a href="index.php"><h2>Tillbaka</h2></a>
</div>


</body>
</html>