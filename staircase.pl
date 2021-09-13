use strict;
use warnings;

my $n=<>;
chomp($n);

for(my $i=1;$i<=$n;$i++){
print " " x ($n - $i);
print "#" x $i;
print "\n";
}