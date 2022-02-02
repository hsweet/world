#!/usr/bin/perl -w
use strict;
use feature ':5.10';
use File::Path;
use Cwd;

# Transpose recently changed lilypond files
#Bf Clarinet C==>D		Ef  Horn C==>A  

#*********************setup**************************

my $cutoffage = 900;   #number of days to look back

my $targetnote;

transpose("Bb");
#transpose("Eb");
#******************end setup************************

sub age{
	(my $file)= @_;
	my @is_recent = stat $file;
	my $mtime = $is_recent[9];
	my $daysold = ((time)- $mtime) /86400;
	return $daysold;
	}

sub transpose{
	(my $instrument) = @_;
	 
	 if ($instrument eq "Bb"){
	     $targetnote="d";
		}
	 elsif ($instrument eq "Eb"){
		$targetnote = "a";
		}
			
	my $newfile_type="\.ly";
	mkpath($instrument); 
	my $path = cwd;   #path to read from
	say $instrument;
		
	opendir(TEMP,$path) || die "$path is not a valid directory: $!"; 
	my @files=grep(/$newfile_type/, readdir TEMP);	#Just lily files
			
	foreach my $newfile(@files){
			 
			open(MYFILE, $newfile ) || die "opening $newfile: $!";
				my @text=<MYFILE>; 
			close(MYFILE);  
			
			#***********process recently changed files *************
			 
			 if (age($newfile) < $cutoffage){
				 my @basename = split(/\./, $newfile);
			 
			#Print a tune listing
			print $basename[0]." ==> ";
            $newfile = $basename[0]."_".$instrument.".ly";
            say $newfile;
			# Write transposed file 
			open(OUT, ">$instrument/$newfile");	
				foreach my $line(@text){
					$line=~s/\\score \{/\\score \{\\transpose c $targetnote/;
					print OUT $line;
				}
			close(OUT);
				 
			}
			#*************************************************
		 
			
	}
}



__END__
#*************************** Process all the files with Lilypond*************************
say "Lily files all transposed and are in $instrument folder one level below current";
print "Process all Lily files now? y/n  ";
my $lily=<STDIN>;
chomp $lily;

if ($lily eq "y"){
	chdir $instrument;
	say cwd;
	system ("lilypond * ")
}
__END__

C==>D  Bf instrument
C==>G  F instrument
C==>A  Ef instrument

       
       bash for recent files....  find . -iname '*.ly' -mtime -10 -type f      
       
        \score {
  % transpose score below
  %\transpose c f
  <<
