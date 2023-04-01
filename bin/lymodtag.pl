#!/usr/bin/perl -w
use strict;
use File::Path;
use Cwd;

#Changes all .ly files in a folder,   
 
my ($file_type, $path, @basename);
mkpath(["changed"],1);
 
$file_type="\.ly";
my $path="/home/harry/Music/charts/world";
chdir ($path);
 
opendir(TEMP,$path) || die "$path is not a valid directory: $!"; 
my @files=grep(/$file_type/, readdir TEMP);	#Just lily files
#print @files;		 
		
 ;	
foreach my $file(@files){
	     print "$file\n";	 
        @basename = split(/\./, $file); 
         
       system("sed 's-arranger= \"\"-arranger= \"Szélrózsa\"-' <\"$file\"> \"changed/$file\"");  
       # print "$basename[0].ly \n"  ;    
      	 
}
