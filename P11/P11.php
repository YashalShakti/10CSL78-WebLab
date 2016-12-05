<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"!>
<html> <body>
<?php
		$con = mysql_connect("127.0.0.1","root","") or die("Error in MySQL connection" . mysql_error());
		mysql_select_db("10CSL78");
		$search = $_REQUEST["search"];
		if($search == "") {
			$name=$_REQUEST["name"];
			$addr1=$_REQUEST["addr1"];
			$addr2=$_REQUEST["addr2"];
			$email=$_REQUEST["email"];
			if(mysql_query("INSERT INTO students VALUES('$name','$addr1','$addr2','$email')"))
				print "<h3>Data inserted successfully <br/> <br/> </h3>"; # Can use else print(mysql_error()); to print error
		} else {
			$result=mysql_query("SELECT * FROM students WHERE name LIKE '%".$search."%'");
			print "<h3> Search results:</h3>";
			while($row = mysql_fetch_array($result)){
				echo " <b>Name: ".$row["name"]."</b> <br/>Address1: ".$row['addr1']." <br/>Address2: ".$row['addr2']." <br/>Email: ".$row['email']."<br/>";
			}
		}
?>
<h3>Insert:</h3> 
<form> <input type="text" name="name" placeholder="Name"> <input type="text" name="addr1" placeholder="Address 1">
 <input type="text" name="addr2" placeholder="Address 2"> <input type="text" name="email" placeholder="Email"> <input type="submit"> </form>

<h3>Search:</h3>
<form> <input type="text" name="search" placeholder="Name"> <input type="submit"> </form>
</body> </html>