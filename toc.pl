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

# this script is usually run via toc.sh. It reads all the chart numbers
# from  the lilypond files in the band folder
# print list sorted by number unless given an argument, then by name
if (! defined @ARGV){
	foreach (sort {$a<=>$b} keys %piece_num){
		printf ("%-6s", $_);
		printf ("%-25s", $piece_num{$_});
		print"|\n";
	}
}else{
	%piece_name = reverse %piece_num; 
	foreach (sort keys %piece_name){
		#printf ("%-25s", $_); 
		print "$_ ...... ";
		printf ("%-6s", $piece_name{$_});
		print "\n";
	} 
}	
 
#build a hash piece# is key, name is value
#throw out any piece with a number > 1000	
sub parse{
	my $chart_full_name = $_[0];
	my $chart_short_name= $_[1];
	$chart_short_name =~s/\.ly//;
	
	open (CHART, $chart_full_name) || die "opening $chart_full_name: $1";
	my @text=<CHART>;
	@lines=  grep /Update/,@text; 
	close CHART; 

	foreach (@lines){
		 my @split=split / /, $_;
		 if ($split[3] < 1000){
			$piece_num {$split[3]}= $chart_short_name; #construct hash
		}	
	}  
}
