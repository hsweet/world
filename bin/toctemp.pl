#!/bin/perl 
use strict;
use File::Find;
use feature ':5.10';

my (@names, @lines, %piece_num, %piece_name);

sub wanted {   
   if ( $File::Find::name=~/\.ly$/i) {  
	   parse ($File::Find::name, $_);
   }
}

find (\&wanted, '/home/harry/Music/band/');

 
 

#build a hash piece# is key, name is value
#throw out any piece with a number > 1000	
sub parse{
	my $chart_full_name = $_[0];
	my $chart_short_name= $_[1];
	$chart_short_name =~s/\.ly//;
	
	 
	 my $lastmod=(stat ($chart_full_name))[10]; 
	   say scalar localtime($lastmod);
	 
	}  

