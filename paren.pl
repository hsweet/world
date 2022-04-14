use strict;
my $str = "((A,B),C,(D,E))";
foreach my $m (qw(A B C D E)) {
  print $m." => ".FindMinParens($m,$str)."\n";
}
sub FindMinParens{
  my $match = shift;
  my $string = shift;
  my @start_pos;
  my $depth = -1;
  # keep matching parens or $match
  while ($string=~/([()]|$match)/g) {
    if ($1 eq "(") {
      # record opening paren positions
      push @start_pos,pos($string);
    }
    elsif ($1 eq ")") {
      # if we reached the closing parens for the minimum pair
      # get the sub string and exit
      if ($#start_pos == $depth) {
        my $start = $start_pos[-1];
        my $len = pos($string) - $start -1;
        return substr($string,$start,$len);
      }else{
        pop @start_pos;
      }
    }
    else {
      # store depth of $match
      $depth = $#start_pos;
    }
  }
  return "";
}

__END__
__OUTPUT__
A => A,B
B => A,B
C => (A,B),C,(D,E)
D => D,E
E => D,E
