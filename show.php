<?php require_once("includes/dbcon.php"); ?>
<?php require_once("includes/functions.php"); ?>
<?php find_selected_page(); ?>
<?php #$query="Select * from userad where cat_id='$sel_page[id]' ";
#$userad=mysql_query($query);

$query="Select * from postad where category='$sel_page[cat_id] sort by' ";
$freead=mysqli_query($con,$query);
?>

<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8">
    <title>Ads </title>
	<link href="_css/homepage.css" rel="stylesheet" type="text/css"/>
	<link href="_css/header.css" rel="stylesheet" type="text/css">
	<link  href="_css/foot.css" rel="stylesheet" type="text/css">
	
	
</head>
<body>
<div id="body">
<?php #include("includes/header.html"); ?>
<div id="cat">
<div id="topheading">
<p>Ads found in the category.</p>
</div>




<?php

$total_recs=mysqli_num_rows($freead);
	if($total_recs === 0)
	 { 
	 	echo "sorry nothing is posted from free users in this category";	
		exit;	
	 } 
else {

$b=1;
 while($rec=mysqli_fetch_array($freead)){?>
<table width="100%" cellspacing="4" cellpadding="4" id="table">
  <tr >
    <td colspan="2" class="adtitle">Title: <span style="color:#666;"><?php echo $rec['title']; ?></span></td>
    
  </tr>
  <tr>
    <td rowspan="3" id="adpic"><img src="Uploadphotos/<?php echo ucwords($rec['image']);?>"
     style="border-radius:15px; max-height:300px; padding:7px; -webkit-box-shadow:  0px 0px 5px 1px #FFD57D;
        
        box-shadow:  0px 0px 5px 1px #FFD57D; "/></td>
    
    <td class="adbg" ><span style="color:#666;"><?php echo $rec['price']; ?></span><br/>Price </td>
    </tr>
    <tr>
    <td  class="adbg"> <span style="color:#666;"><?php echo $rec['contactno']; ?></span><br/>Contact name</td>
   
  </tr>
  <tr>
    <td  class="adbg"><span style="color:#666;"><?php echo $rec['username']; ?></span><br/>Mobile number</td>
   
  </tr>
  <tr>
    <td  class="adbg" colspan="2">Description:<br/><span style="color:#666;"><?php echo $rec['description']; ?></span><br/></td>
   </tr>
   <tr>
    <td  class="adbg" colspan="2">Description:<br/><span style="color:#666;"><?php echo $rec['area']; ?></span><br/></td>
   </tr>
   <tr>
    <td  class="adbg" colspan="2">Description:<br/><span style="color:#99;"><?php echo $rec['year']; ?></span><br/></td>
   </tr>
   <tr>
    <td  class="adbg" colspan="2">Description:<br/><span style="color:#666;"><?php echo $rec['field']; ?></span><br/></td>
   </tr>
   <tr>
    <td  class="adbg" colspan="2">Description:<br/><span style="color:#996;"><?php echo $rec['weblink']; ?></span><br/></td>
   </tr>
   <tr>
    <td  class="adbg" colspan="2">Description:<br/><span style="color:#666;"><?php echo $rec['accommodation']; ?></span><br/></td>
   </tr>
  
</table>
<?php $b++; }
}
?>
</div>

</div>

<?php #include("includes/heder.php"); ?>
<!--<div class="demo-description">
<p>My menu</p>
</div>-->
</body>
</html>
