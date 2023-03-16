#!/usr/bin/perl -w
use strict;
use feature ':5.10';
use File::Path;
use Cwd;

# combine charts for all instruments;

#*********************setup**************************
my $basepath="/home/harry/Music/charts/world/";
my $target="combined/";
my $cnt=0;
my $loopcnt=0;

#*******get sorted list of pdf files from current directory ******
my $path = cwd;   #path to read from	
my $file_type="\.pdf";
opendir(TEMP,$path) || die "$path is not a valid directory: $!"; 
my @tunes = grep(/$file_type/, readdir TEMP);	#Just pdf files
my @sorted = sort { "\U$a" cmp "\U$b" } @tunes; #case insensitive
 
foreach my $tune (@sorted){
	$tune =~s/\.pdf//;  #strip extension for other instruments
	my $btune = "Bb/".$tune."-Bb.pdf";
	$cnt = $cnt +1 if -e $btune;	
	my $etune = "Eb/".$tune."-Eb.pdf"; 
	$cnt = $cnt +1 if -e $etune;
	my $bass = "Bass/".$tune."-Bass.pdf";	
	$cnt = $cnt +1 if -e $bass
	$tune = $tune.".pdf";
	
	# write combined pdf only if all the parts exist
	if ($cnt >2){
		$loopcnt=$loopcnt+1;
		#system ( "pdfunite $tune $btune $etune $bass $target$tune");
		system ("pdftk $tune $btune $etune $bass cat output $target$tune");	
    }
    
    $cnt=0;
}
 say "$loopcnt/$#tunes charts successfully merged";

__END__

if (-e $btune){
		$cnt=$cnt+1;
	}else{
	}
