#!/usr/bin/perl -w
use strict;
use File::Path;
use feature ':5.10';
use Cwd;

#Changes all .ly files in a folder,   
 
my ($file_type, $path, @basename, $midistring);
mkpath(["changed"],1);
 
$file_type="\.ly";
$path= cwd;
$midistring=  "\\midi{ \n\t  \\context { \n\t\t \\Score tempoWholesPerMinute = #(ly:make-moment 120 4) \n\t } \n }";
 		
opendir(TEMP,$path) || die "$path is not a valid directory: $!"; 
my @files=grep(/$file_type/, readdir TEMP);	#Just lily files

 
my $cnt=0;	
foreach my $file(@files){
	    $cnt++;
	    
		open(MYFILE, $file ) || die "opening $file: $!";
   			my @text=<MYFILE>; 
		close(MYFILE);  
     
        @basename = split(/\./, $file);
         
        #Print a tune listing
        #printf(" %3s %-25s", ($cnt, $basename[0]));
        #print "\n";
      	 
		open(OUT, ">changed/$file");	#output is to a folder called "Changed" one level deeper in tree
			foreach my $line(@text){
				#$line=~s:\\date:\\italic{ \"Sheet $cnt | Updated \" \\date } :;
				#$line=~s:\\midi \{ }:$midistring:;	 		
			    #$line=~s/\\key [a-g] \\minor/\\key c \\major/;
			    #$line=~s/\\transpose [a-g] [a-g]//;
			    
			    # Misc stuff
			    #$line=~s/\s 		#fingerings and -. ->
			    
			     
			    #A flat **********************
				$line=~s/\saf(\d)\s/ gs$1 /g;  #note with time value
				$line=~s/\saf(\d\.)\s/ gs$1 /g; #dotted time
				$line=~s/\saf16/ gs16/g;        #16ths
				$line=~s/\saf\s/ gs /g;          #naked notes

				# B flat *********************
				$line=~s/\sbf(\d)\s/ as$1 /g;
				$line=~s/\sbf(\d\.)\s/ as$1 /g;
				$line=~s/\sbf16/ as16/g;
				$line=~s/\sbf\s/ as /g;

				#E flat  ******************
				$line=~s/\sef(\d)\s/ ds$1 /g;
				$line=~s/\sef(\d\.)\s/ ds$1 /g;
				$line=~s/\sef16/ ds16/g;
				$line=~s/\sef\s/ ds /g;
			    
			    #print $line;
			    print OUT $line;
		}
		close(OUT);
}
__END__


 
