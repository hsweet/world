#!/usr/bin/perl -w
#use strict;
use feature ':5.10';

# **************  send array to function
my @t=qw(this that other);

sub f{
   (my @a)=@_;
    return @a;	
	}
	
my @x=f('fish','dog');
print @x;

print f(@t);



#********************************
my $str = "I am a boatb";
$str=~ s/boat/goat/ if $str=~/b$/ ;
#print $str;
