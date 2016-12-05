#!/usr/bin/perl
use CGI qw(:standard);
print header().start_html();
$name = param("name");
if ($name ne "") {
	@arr = ("Hi","Hey","Hello","Welcome");
	print $arr[rand(4)]." $name";
} else {
	print "Enter your name: <form> <input type='text' name='name' > <input type='submit'/></form>";
}
print end_html();

# Write a Perl program to accept the User Name and display a greeting message randomly chosen from a list of 4 greeting messages.