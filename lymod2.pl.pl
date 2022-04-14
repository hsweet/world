#!/usr/bin/perl -w
use strict;
use File::Path;
use Cwd;
use feature ':5.10';

my ($file_type, $path, @files, @basename);
mkpath(["changed"],1);

say 'Choose One Option';
say 'a  : A4 Size Paper, ';
say 'l  : Letter Size Paper';
say 'd  : Show Date';
say 'nd : Remove Date';
say 't  : Print Lilypond Tagline';
say 'nt : Do not print Lilypond Tagline';
my $input = <STDIN>;

if ($input eq "a"){say "A4";}
elsif($input eq "l"){say 'Letter';}
 
sub all_lilys(){
    # reads all the lilypond files in a folder
    # 
    $file_type="\.ly";
    $path= cwd;
    opendir(TEMP,$path) || die "$path is not a valid directory: $!"; 
    my @files=grep(/$file_type/, readdir TEMP);	#Just lily files
    print @files;
    }

sub some_lilys(){
    # read a prepared list of lilypond files
    my $file="oldpartletters.txt";
    open(MYFILE, $file ) || die "opening $file: $!";
        my @files=<MYFILE>;
    close(MYFILE);
    #print @files;
    return @files;
}

@files = some_lilys();
print @files;
_
#my $cnt=0;	
foreach my $file(@files){
#	    $cnt++;
	    chomp $file;
		open(MYFILE, $file ) || die "opening $file: $!";
   			my @text=<MYFILE>; 
		close(MYFILE);  
     
        @basename = split(/\./, $file);
         
      	 
		open(OUT, ">changed/$file");	#output is to a folder called "Changed" one level deeper in tree
			foreach my  $_(@text){
                s/\^\\markup { \\box .*}//;
                print OUT;  
                if (/\\time/){
                    print OUT "  \\set Score.markFormatter = #format-mark-box-alphabet\n" ;
                }
                if (/\\repeat volta/){
                    print OUT "  \\mark \\default\n";
                }
                
		}
		close(OUT);
}
