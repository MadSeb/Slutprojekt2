<?php

$connection=mysqli_connect("localhost","root","","Prov");
mysqli_select_db($connection,"Prov");


$subject=mysqli_real_escape_string($connection,$_POST['subject']);
$text=mysqli_real_escape_string($connection,$_POST['text']);
$name=mysqli_real_escape_string($connection,$_POST['name']);
$datum=date("Y-m-d H:i:s");


$query="INSERT INTO summary(summary_subject, summary_text, summary_name, summary_date) 
		VALUES ('$subject','$text','$name','$datum')";
$result=mysqli_query($connection,$query);

?>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Namnlöst dokument</title>

<link rel="stylesheet" type="text/css" href="style.css">

</head>

<body>

<?php

echo "Du har lagt till:" . '<h3>' . $subject . '</h3>' . '<p>' . $text . '<br>' . $name . '</p>';

?>

<a href="index.php">Tillbaka</a>

</body>
</html>