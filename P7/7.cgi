# Write a Perl program to display a digital clock which displays the current time of the server.

#!/usr/bin/perl
use CGI qw(:standard);
print "refresh:1\n" 
	.header()
	.start_html()
	.localtime(time())
	.end_html();

# To only print time without date) use the following two lines instead.
# ($s,$m,$h)=localtime(time());
# print "The time is: $h:$m:$s";