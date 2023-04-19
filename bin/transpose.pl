#!/usr/bin/perl -w
use strict;
use feature ':5.10';
use File::Path;
use Cwd;

=pod
useage ...  transpose.pl [number of days to look back]
ex. transpose.pl 7 looks back a week

Adds instrument name, transposition, saves to appropriate
folder, then runs makes the individual pdf files.  Finally
it joins them into a single .pdf in the world/combined folder

Transpose recently changed lilypond files
Bf Clarinet C==>D		Ef Horn C==>A   Bass just change clef
 
=cut
#*********************setup**************************
my $cutoffage = @ARGV || 4;   #number of days to look back
my $target;
my @trans=qw(Bb Ef Bass);
my $basepath="/home/harry/Music/charts/world";
chdir ($basepath);

#********process each instrument ************************
transpose("Bb");
transpose("Eb");
#show the finished pdf
my $chart=transpose("Bass");
#system ("evince combined/$chart");
# I just hardcoded the instruments... 
makepdf(@trans); #send a list of transposing instruments, Bb, Eb, Bass


sub age{
    (my $file)= @_;
	my @is_recent = stat $file;
	my $mtime = $is_recent[9];
	my $daysold = ((time)- $mtime) /86400;
	return $daysold;
	}
	
sub tunes{
	my @tunes2use;
    chdir ($basepath);	
	my $tune_type="\.ly";
	opendir(TEMP,$basepath) || die "$basepath is not a valid directory: $!"; 
	my @files=grep(/$tune_type/, readdir TEMP);	#All the lily files
	 
	foreach my $tune(@files){
		if (age($tune) < $cutoffage){
		push @tunes2use, $tune;
		}
	}
	return @tunes2use; 
}

sub transpose{
	(my $instrument) = @_;
	
	 if ($instrument eq "Bb"){
	     $target="d";
		}
	 elsif ($instrument eq "Eb"){
		 $target = "a";
		}
	 elsif ($instrument eq "Bass"){
		 $target = "bass";
	 }		
	#mkpath($instrument); #if !exist?
	my @files = tunes();
	#say @files;
	foreach my $tune(@files){
		open(MYFILE, $tune ) || die "opening $tune: $!";
			my @text=<MYFILE>; 
		close(MYFILE);  
	#**************************************************	 
	
		 say "-" x 60;
		 say "Processing $instrument/$tune...";
		 say "-" x 60;
		#******** make changes and rewrite  ******* 
		open(OUT, ">$instrument/$tune");	
		foreach my $line(@text){
			$line=~s/Violin/$instrument/;  #for Bb and Eb add "instrumet"
			
			if ($target ne "bass"){
				$line=~s/\\score \{/\\score \{\\transpose c $target/;
					
			if ($target eq "Eb"){
				$line=~s/relative c''/relative c'/;
				$line=~s/relative c'/relative c/;		
			}	
			print OUT $line;
			}
			elsif ($target eq "bass"){
				$line=~s/clef treble/clef bass/;
				$line=~s/relative c'*/relative c/;
				print OUT $line;
			}			
		}
		close(OUT);
		
	
	}  # end foreach loop
}  #end sub

sub makepdf{
	my @tunes = tunes();
	#make pdfs
	foreach my $tune (@tunes){
		chdir "$basepath/Bb";
		my $x= `lilypond -s $basepath/Bb/$tune`;
		chdir "$basepath/Eb";
		$x= `lilypond -s $basepath/Eb/$tune`;
		chdir "$basepath/Bass";
		$x= `lilypond -s $basepath/Bass/$tune`;
	}
	#combine pdfs
	foreach my $tune (@tunes){
		my @basename= split(/\./,$tune);
		my $pdf = "$basename[0].pdf";	
		chdir $basepath; 
		system("pdftk $pdf Bb/$pdf Eb/$pdf Bass/$pdf cat output combined/$pdf")
	}
	#display finished files
	system("nautilus $basepath/combined");
}

#system ("evince combined/$pdf") # to open file

 
