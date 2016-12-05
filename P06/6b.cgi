#!/usr/bin/perl
use CGI qw(:standard);
print header().start_html();

# Ensure that file exists with appropritate permisions before executing the program
open(FILE,"<count.txt");
$count=<FILE>;
close(FILE);

$count++;

open(FILE,">count.txt");
print FILE $count;
close(FILE);

print "The number of visitors are: ".$count;
print end_html();

# Write a Perl program to keep track of the number of visitors visiting the web page and to display this count of visitors, with proper headings