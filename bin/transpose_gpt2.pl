#!/usr/bin/perl

use strict;
use warnings;
use feature qw(say);
use File::Path qw(make_path remove_tree);

my $cutoff_age = $ARGV[0] || 1;
my $basepath = "/home/harry/Music/charts/world";
chdir($basepath);

my @instruments = qw(Bb Eb Bass);

foreach my $instrument (@instruments) {
    transpose($instrument);
}

my $combined_pdf = makepdf(@instruments);
if ($combined_pdf) {
    say "Finished generating $combined_pdf.";
    system("xdg-open combined/$combined_pdf");
} else {
    say "Failed to generate the combined PDF.";
}

sub age {
    my ($file) = @_;
    my @is_recent = stat($file);
    my $mtime = $is_recent[9];
    my $days_old = ((time) - $mtime) / 86400;
    return $days_old;
}

sub tunes {
    my $tune_type = "\.ly";
    opendir(my $dh, $basepath) || die "Cannot open directory: $!";
    my @files = readdir($dh);
    closedir($dh);

    my @tunes2use;
    foreach my $tune (@files) {
        if ($tune =~ /$tune_type/ && age($tune) < $cutoff_age) {
            push @tunes2use, $tune;
        }
    }

    return @tunes2use;
}

sub transpose {
    my ($instrument) = @_;

    my $target;
    if ($instrument eq "Bb") {
        $target = "d";
    } elsif ($instrument eq "Eb") {
        $target = "a";
    } elsif ($instrument eq "Bass") {
        $target = "bass";
    }

    make_path($instrument);

    my @files = tunes();
    foreach my $tune (@files) {
        my $input_file = "$basepath/$tune";
        my $output_file = "$basepath/$instrument/$tune";

        open(my $input_fh, "<", $input_file) || die "Cannot open file $input_file: $!";
        my @text = <$input_fh>;
        close($input_fh);

        say "-" x 60;
        say "Processing $instrument/$tune...";
        say "-" x 60;

        open(my $output_fh, ">", $output_file) || die "Cannot create file $output_file: $!";
        foreach my $line (@text) {
            $line =~ s/Violin/$instrument/;

            if ($target ne "bass") {
                $line =~ s/\\score \{/\\score \{\\transpose c $target/;

                if ($target eq "Eb") {
                    $line =~ s/relative c''/relative c'/;
                    $line =~ s/relative c'/relative c/;
                }
            } elsif ($target eq "bass") {
                $line =~ s/clef treble/clef bass/;
                $line =~ s/relative c'*/relative c/;
            }

            print $output_fh $line;
        }

        close($output_fh);
    }
}

sub makepdf {
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
    if (fork() == 0) {
        exec("nautilus $basepath/combined");
        exit;
    }
}


__END__
This function first calls the tunes function to get a list of all the Lilypond files that need to be processed.
 Then, it loops through that list and uses lilypond to create PDFs for each instrument (Bb, Eb, and Bass) in their respective folders.

Next, it loops through the list again and creates a combined PDF file for each Lilypond file using pdftk. 
Finally, it uses the system function to open the combined folder in Nautilus file manager.
