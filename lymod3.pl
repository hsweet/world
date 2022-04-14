#!/usr/bin/perl -w
use strict;
use File::Path;
use Cwd;
use feature ':5.10';

#  Read a list or folder of lilypond files, make some changes to the text
#  write modified files to changed folder
#  run "lilypond *" to compile all the modified files

my ($file_type, $path, $search, $replace, @basename);
mkpath(["changed"],1);

say "Choose One Option \n";
say 'a  : A4 Size Paper, ';
say 'l  : Letter Size Paper';
say 'd  : Display Date';
say 'nd : Remove Date';
say 't  : Print Lilypond Tagline';
say 'nt : Do not print Lilypond Tagline';
say 'c  : Add custom filter to files';
say 'nl : Append a new line after a match';
my $modify = <STDIN>;
chomp $modify;

sub all_lilys(){
    $file_type=".ly";
    $path= cwd;
    opendir(TEMP,$path) || die "$path is not a valid directory: $!";
    my @files=grep(/$file_type$/, readdir TEMP);	#Just lily files
    return @files;
    }

sub some_lilys(){
    my $file="oldpartletters.txt";
    open(MYFILE, $file ) || die "opening $file: $!";
        my @files=<MYFILE>;
    close(MYFILE);
    return @files;
    }

if ($modify eq "c"){
    say 's/searchterm/replacement/';
    print "Search string: ";
    $search = <STDIN>;
    chomp $search;
    print"Replacement string: ";
    $replace = <STDIN>;
    chomp $replace;
        }

if ($modify eq "nl"){
    say 'Text to match: ';
    $search = <STDIN>;
    chomp $search;
    }

my @files = all_lilys();
 
foreach my $file(@files){
    chomp $file;
    open(MYFILE, $file ) || die "opening $file: $!";
        my @text=<MYFILE>;
    close(MYFILE);
    # @basename = split(/\./, $file);
    open(OUT, ">changed/$file");	#output is to a folder called "Changed" one level deeper in tree
        
    foreach $_(@text){
        if ($modify eq "a")     {s/set-paper-size "letter"/set-paper-size "a4"/;}
        elsif ($modify eq "l")  {s/set-paper-size "letter"/set-paper-size "letter"/;}
        elsif ($modify eq "d")  {s/%date/date/;}
        elsif ($modify eq "nd") {s/date/%date/;}
        elsif ($modify eq "t")  {s/%tagline/tagline/;}
        elsif ($modify eq "nt") {s/tagline/%tagline/;}
        elsif ($modify eq "c")  {s/$search/$replace/;}
        else {say "Bad Input"}
        print OUT;
    }
		close(OUT);
}


__END__

date = #(strftime "%d-%m-%Y" (localtime (current-time)))
\markup{ \italic{ " Updated " \date  }  }
\set Score.markFormatter = #format-mark-box-alphabet
tagline = ##f


# s/this/that/ or if(/this/){print OUT "that"} to append new line after a match.

 # s/\^\\markup \{ \\box .*}//;
               
print OUT;
if (/\\time/){
    print OUT "  \\set Score.markFormatter = #format-mark-box-alphabet\n" ;
}
if (/\\repeat volta/){
    print OUT "  \\mark \\default\n";
}
