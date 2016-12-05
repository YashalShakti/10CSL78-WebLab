#!/usr/bin/perl
use CGI qw(:standard);
print header().start_html();
foreach $key( sort keys %ENV){
	print "<b>$key</b>: "."$ENV{$key}<br/>";
}
print end_html();

# Write a Perl program to display various Server Information like Server Name, Server Software, Server protocol, CGI Revision etc.

# To print them individually 
# print "<b>Server name :</b> $ENV{'SERVER_NAME'}<br/>";
# print "<b>Server port :</b> $ENV{'SERVER_PORT'}<br/>";
# print "<b>Server protocol :</b> $ENV{'SERVER_PROTOCOL'}<br/>";
# print "<b>Server software :</b> $ENV{'SERVER_SOFTWARE'}<br/>";
# print "<b>CGI VERSION:</b> $ENV{'GATEWAY_INTERFACE'}<br/>";