#!/usr/bin/perl -w
#use strict;
 
#OPEN THE FILE FROM STDIN
print "Path and filename: ";
#my $file=<STDIN>;chomp $file;
my $file="oldpartletters.txt";

open(MYFILE, $file ) || die "opening $file: $!";
   	my @text=<MYFILE>;
close(MYFILE);
print @text;

#CLEAN OUT THE CRAP
open (MYFILE, ">clean.txt") || die "$!";
 foreach my $text (@text) {
    print $text;
    $a = qx (sed '/repeat volta/a  \\mark \\default' $text);
    $b = qx (sed '/\\time .*/a  \\set Score.markFormatter = #format-mark-box-alphabet' $text);
    #$b = qx (sed '/\\time .*/a  someshit or other' $text);
    print $b;
    #$y=system ("sed '/repeat volta/a \ \\mark \\default' $text");
    #$x= system("sed '/\\time/a \ \\set Score.markFormatter = #format-mark-box-alphabet' $text");
    #print  $y;
 }  
close(MYFILE)

 
 
