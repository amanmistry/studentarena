<!DOCTYPE html>
<html>
<head>
	<title>Display Books</title>
</head>
<body>
<table>
	<tr>
		<!--<td>r_id</td>-->
		<td>title</td>
		<td>category</td>
		<td>description</td>
		<td>image</td>
		<td>price</td>
		<td>year</td>
		<td>field</td>
		<td>weblink</td>
		<td>accommodation</td>
		<td>username</td>
		<td>contactno</td>
		<td>area</td>
	</tr>
</table>
	<br><br>
	
<?php 

include'includes/dbcon.php';//Including Database Connectivity File

// $id=$_GET['adid'];

// $q="SELECT * FROM postad where category="Books" ";
$q="select * from postad where category='Books'";
 $result=mysqli_query($con,$q);
 while ($row=mysqli_fetch_array($result)) {
	
	//Fetching values from database according to the row index
 	// $r_id=$row['0'];
 	$title=$row['1'];
 	// $cat_id=$row['2'];
 	$category=$row['2'];
 	$description=$row['3'];
 	$image=$row['4'];
 	$price=$row['5'];
 	$year=$row['6'];
 	$field=$row['7'];
 	$weblink=$row['8'];
 	$accommodation=$row['9'];
 	$username=$row['10'];
 	$contactno=$row['11'];
 	$area=$row['12'];

?>
<table>
<tr align="center">
	<!-- <td><?php #echo $r_id  ?></td> -->
	<!-- <td><?php #echo $cat_id?></td> -->
	<td><?php echo $title ?></td>
	<td><?php echo $category ?></td>
	<td><?php echo $description ?></td>
	<td><?php echo $image ?></td>
	<td><?php echo $price ?></td>
	<td><?php echo $year ?></td>
	<td><?php echo $field ?></td>
	<td><?php echo $weblink ?></td>
	<td><?php echo $accommodation ?></td>
	<td><?php echo $username ?></td>
	<td><?php echo $contactno ?></td>
	<td><?php echo $area ?></td>
</tr>
</table>
<?php } ?>

</body>
</html>
