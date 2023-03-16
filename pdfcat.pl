#!/usr/bin/perl -w
use strict;
use feature ':5.10';
use File::Path;
use Cwd;
# combine charts for all instruments;

#*********************setup**************************
my $basepath="/home/harry/Music/charts/world/";
my $target="combined/";
my @pdfs;
#*******get pdf  files from current directory ******
	my $path = cwd;   #path to read from	
	my $file_type="\.pdf";
	opendir(TEMP,$path) || die "$path is not a valid directory: $!"; 
	my @tunes = grep(/$file_type/, readdir TEMP);	#Just pdf files
    my @sorted = sort { "\U$a" cmp "\U$b" } @tunes; #case insensitive

my $cnt=0;
my $loopcnt=0;    
foreach my $tune (@sorted){
	$tune =~s/\.pdf//;  #strip extension for other instruments
    
    #my $btune = $basepath."Bb/".$tune."-Bb.pdf";
	my $btune = "Bb/".$tune."-Bb.pdf";
	
	if (-e $btune){
		$cnt=$cnt+1;
		#say $btune;
	}else{
		#say "$btune";
	}
	$cnt = $cnt +1 if -e $btune;
	#last if  -e $btune; 	
  
	my $etune = "Eb/".$tune."-Eb.pdf";
	if (-e $etune){
		$cnt=$cnt+1; 
		#say "$etune";
	}else{
		#say $etune;
	}
	#$cnt = $cnt +1 if -e $etune;
	#push @pdfs, $etune if -e $etune;

	my $bass = "Bass/".$tune."-Bass.pdf";	
	if (-e $bass){
		$cnt=$cnt+1; 
		#say "$bass";
	}else{
		#say $bass;
	}
	#$cnt = $cnt +1 if -e $bass
	 
	 
	$tune = $tune.".pdf";
	
	# write combined pdf only if all the parts exist
	if ($cnt >3){
		#say "Count is $cnt and $tune has all parts";
		$loopcnt=$loopcnt+1;
		#say "$tune, $btune, $etune, $bass";
		#say "pdfunite $tune $btune $etune $bass $target$tune";
		#my $x = <STDIN>;
		#system ( "pdfunite $tune $btune $etune $bass $target$tune");
		system ("pdftk $tune $btune $etune $bass cat output $target$tune");	
    }
    
   #say $cnt;
    $cnt=0;
}
# pdftk A_Gitte_Nacht.pdf Bb/A_Gitte_Nacht_Bb.pdf Eb/A_Gitte_Nacht_Eb.pdf Bass/A_Gitte_Nacht_Bass.pdf cat output combined/A_Gitte_Nacht.pdf


# say "$loopcnt/$#tunes charts successfully merged";
