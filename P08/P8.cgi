#!/usr/bin/perl
use CGI qw(:standard);
use DBI;

print header().start_html();

$name = param("name");
$age = param("age");

if ($name ne "") {
	$con = DBI->connect("DBI:mysql:10CSL78","root","");

	$query1 = $con->prepare("INSERT INTO names VALUES(?,?)");
	$query1->execute($name,$age);

	$query2=$con->prepare("SELECT * FROM names");
	$query2->execute();

	print "Data in table: <br/>";
	while(@row=$query2->fetchrow_array()) {
		print "@row <br/>"
	}
} else {
	print "Enter your name and age: <form> <input type='text' name='name' > <input type='text' name='age' > <input type='submit'/></form>";	
}

print end_html();

# Write a Perl program to insert name and age information entered by the user into a table created using MySQL
#  and to display the current contents of this table

# SQL
# CREATE DATABASE 10CSL78;
# USE 10CSL78;
# CREATE TABLE names(name VARCHAR(20), age INTEGER);