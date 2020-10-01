<?php 	require_once("_includes/connection.php");?>
<?php require_once("_includes/functions.php"); ?>
<?php
	if (isset($_GET['subj'])) {
		$sel_subj = $_GET['subj'];
		$sel_page = "";
	} elseif (isset($_GET['page'])) {
		$sel_subj = "";
		$sel_page = $_GET['page'];
	} else {
		$sel_subj = "";
		$sel_page = "";
	}
?>
<html>
<head>
<style type="text/css">
.ullist{}
.ullist li{ font-size:12px;
	font-family:"Times New Roman";
	list-style-image: url(_images/categoryimage.png);
	
}
.ullist li a{
	color:9958f1;
	text-decoration:none;
	
}
.ullist li a:hover{
	font-weight:bold;
}

.heading{
	font-size: 18px;
	text-align: left;
	padding-left: 7px;
	font-family: "Times New Roman";
	list-style-type: none;
}
.heading a{
	padding-top:20px;
	text-decoration: none;
	color: #0865c1;
}
</style>
</head>
<body>
	<div class="heading" >

		<!-- showing data from server-->
      <?php
		$subject_set = get_all_subjects();
		while ($subject = mysql_fetch_array($subject_set)) {
			echo "<li";
			if ($subject["id"] == $sel_subj) { echo " class=\"selected\""; }
			echo "><a href=\"#?subj=" . urlencode($subject["id"]) . 
				"\">{$subject["title"]}</a></li>";
			$page_set = get_pages_for_subject($subject["id"]);
			echo "<ul class=\"ullist\">";
			while ($page = mysql_fetch_array($page_set)) {
				echo "<li";
				if ($page["id"] == $sel_page) { echo " class=\"selected\""; }
				echo "><a href=\"content.php?page=" . urlencode($page["id"]) .
					"\">{$page["sub_title"]}</a></li>";
			}
			echo "</ul>";
		}

		?>

	
         </ul>

</div>
</body>
</html>
