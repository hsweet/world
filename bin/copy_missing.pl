#!/usr/bin/perl -w
use strict;
use feature ':5.10';
use File::Path;
use Cwd;

#Bf Clarinet C==>D		Ef Horn C==>A  
# diff -qr . Bb/ | sort | grep .ly

#*********************setup*************************

my $basepath="/home/harry/Music/charts/world";
chdir ($basepath);
my $target="Eb/";

open (FH, "$basepath/missing_bass.txt" ) || die $!;
my @tunes = <FH>;
close (FH);

foreach my $tune (@tunes){
	chomp $tune;
	my $t = `ly \"transpose c a\" -o Eb/$tune $tune`; 
	say "ly \"transpose c a\" -o Eb/$tune $tune"; 
	}
